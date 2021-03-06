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

public class RoomUploadFileUtils {

  private static final Logger logger = 
      LoggerFactory.getLogger(RoomUploadFileUtils.class);

  
  

  

  
  public static String uploadFile(String uploadPath,			 /*경로*/
                              String originalName, 						/*이름*/
                              byte[] fileData						/*파일 데이터*/
                              )throws Exception{	
	  																			/*-클라이언트에서 요청한(Drop한 파일)*/
    
    String savedName =originalName; /*2.업로드 파일이름 생성=>고유한 이름+원래이름*/
    
    
    File target = new File(uploadPath,savedName);//파일 객체 생성
    												//savedPath : 새로 생성된 폴더
    FileCopyUtils.copy(fileData, target);	//파일 업로드  /*5.기본경로+폴더경로+파일이름 저장*/
    
    String formatName = originalName.substring(originalName.lastIndexOf(".")+1);//substring : 확장자 뽑아내기
    
    String uploadedFileName = null;
    
    if(MediaUtils.getMediaType(formatName) != null){	//확장자가 존재하면
      return uploadedFileName =savedName;
    }else{
    	return uploadedFileName = "";
    }
  }
  
  
  private static void makeDir(String uploadPath){	/* 4.업로드 기본 경로+날짜 폴더 생성*/
    
      
      File dirPath = new File(uploadPath);
      

    }
  }
  
  

