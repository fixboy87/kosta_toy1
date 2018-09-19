package yanoll.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {

  private static final Logger logger = 
      LoggerFactory.getLogger(UploadFileUtils.class);

  
  
  
  
  private static String calcPath(String uploadPath){		/* 3. 날짜 정보생성(+4.폴더생성 메소드호출) */
	    
	    Calendar cal = Calendar.getInstance();
	    
	    String yearPath = File.separator+cal.get(Calendar.YEAR);
	    
	    String monthPath = yearPath + 
	        File.separator + 
	        new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);

	    String datePath = monthPath + 
	        File.separator + 
	        new DecimalFormat("00").format(cal.get(Calendar.DATE));
	    
	    makeDir(uploadPath, yearPath,monthPath,datePath);	
	    /* 4. 기본 경로+날짜 폴더 생성 메소드(3. 날짜 정보생성)*/
	    
	    logger.info(datePath);
	    
	    return datePath;
	  }
  

  
  public static String uploadFile(String uploadPath,			 /*경로*/
                              String originalName, 						/*이름*/
                              byte[] fileData)throws Exception{	/*파일 데이터*/
	  																			/*-클라이언트에서 요청한(Drop한 파일)*/
    
    UUID uid = UUID.randomUUID(); /*1.고유한 이름 생성*/
    
    String savedName = uid.toString() +"_"+originalName; /*2.업로드 파일이름 생성=>고유한 이름+원래이름*/
    
    String savedPath = calcPath(uploadPath);  /*4.업로드 경로 + 날짜 폴더(<-3.날짜 정보 생성) 생성*/
    
    File target = new File(uploadPath +savedPath,savedName);//파일 객체 생성
    												//savedPath : 새로 생성된 폴더
    FileCopyUtils.copy(fileData, target);	//파일 업로드  /*5.기본경로+폴더경로+파일이름 저장*/
    
    String formatName = originalName.substring(originalName.lastIndexOf(".")+1);//substring : 확장자 뽑아내기
    
    String uploadedFileName = null;
    
    if(MediaUtils.getMediaType(formatName) != null){	//확장자가 존재하면
       makeThumbnail(uploadPath, savedPath, savedName); //썸네일 생성
      return uploadedFileName =savedPath+"/"+savedName;
    }else{
    	return uploadedFileName = "";
    }
  }
  
  private static  String makeThumbnail(
              String uploadPath, 
              String path, 
              String fileName)throws Exception{
            
    BufferedImage sourceImg = 
        ImageIO.read(new File(uploadPath + path, fileName));
    
    BufferedImage destImg = 
        Scalr.resize(sourceImg, 
            Scalr.Method.AUTOMATIC, 
            Scalr.Mode.FIT_TO_HEIGHT,100);
    
    String head = fileName.substring(0, fileName.indexOf("."));
    String pattern = fileName.substring(fileName.indexOf(".")+1);
    String thumbnailName = 
        uploadPath + path + File.separator +head+"_small."+pattern;
    
    File newFile = new File(thumbnailName);
    String formatName = 
        fileName.substring(fileName.lastIndexOf(".")+1);
    
    
    ImageIO.write(destImg, formatName.toUpperCase(), newFile);
    return thumbnailName.substring(
        uploadPath.length()).replace(File.separatorChar, '/');
  } 
  
  

  
  
  private static void makeDir(String uploadPath, String... paths){	/* 4.업로드 기본 경로+날짜 폴더 생성*/
    
    if(new File(uploadPath+paths[paths.length-1]).exists()){
      return;
    }
    
    for (String path : paths) {
      
      File dirPath = new File(uploadPath + path);
      
      if(! dirPath.exists() ){
        dirPath.mkdir();
      } 
    }
  }
  
  
}
