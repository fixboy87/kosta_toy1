package yanoll.user.domain;

import java.io.Serializable;

public class Hotel implements Serializable {
	
	private int h_no;
	private String h_id;
	private String h_name;
	private String h_phonenum;
	private String h_mail;
	private String h_password;
	private String h_address;
	private int room_count;
	private int h_profit;
	private String h_info;
	private String pic_url;
	private String h_location;
	private int price;
	

	public int getH_no() {
		return h_no;
	}


	public void setH_no(int h_no) {
		this.h_no = h_no;
	}


	public String getH_id() {
		return h_id;
	}


	public void setH_id(String h_id) {
		this.h_id = h_id;
	}


	public String getH_name() {
		return h_name;
	}


	public void setH_name(String h_name) {
		this.h_name = h_name;
	}


	public String getH_phonenum() {
		return h_phonenum;
	}


	public void setH_phonenum(String h_phonenum) {
		this.h_phonenum = h_phonenum;
	}


	public String getH_mail() {
		return h_mail;
	}


	public void setH_mail(String h_mail) {
		this.h_mail = h_mail;
	}


	public String getH_password() {
		return h_password;
	}


	public void setH_password(String h_password) {
		this.h_password = h_password;
	}


	public String getH_address() {
		return h_address;
	}


	public void setH_address(String h_address) {
		this.h_address = h_address;
	}


	public int getRoom_count() {
		return room_count;
	}


	public void setRoom_count(int room_count) {
		this.room_count = room_count;
	}


	public int getH_profit() {
		return h_profit;
	}


	public void setH_profit(int h_profit) {
		this.h_profit = h_profit;
	}


	public String getH_info() {
		return h_info;
	}


	public void setH_info(String h_info) {
		this.h_info = h_info;
	}


	public String getPic_url() {
		return pic_url;
	}


	public void setPic_url(String pic_url) {
		this.pic_url = pic_url;
	}


	public String getH_location() {
		return h_location;
	}


	public void setH_location(String h_location) {
		this.h_location = h_location;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}

	public Hotel(){}


	@Override
	public String toString() {
		return "Hotel [h_no=" + h_no + ", h_id=" + h_id + ", h_name=" + h_name + ", h_phonenum=" + h_phonenum
				+ ", h_mail=" + h_mail + ", h_password=" + h_password + ", h_address=" + h_address + ", room_count="
				+ room_count + ", h_profit=" + h_profit + ", h_info=" + h_info + ", pic_url=" + pic_url
				+ ", h_location=" + h_location + ", price=" + price + "]";
	}
	

	
}


/*
DROP TABLE HOTEL;
DROP SEQUENCE hotel_seq;

CREATE TABLE HOTEL(
  h_no number not null,
  h_name varchar2(100) not null,
  h_phonenum varchar2(100) not null,
  h_mail varchar2(100) not null,
  h_address varchar2(100) not null,
  room_count number,
  h_id varchar2(100) not null,
  h_password varchar2(100) not null,
  h_profit number not null,
  price number,
  h_info varchar2(500),
  pic_url varchar2(100),
  h_location varchar2(100) not null,
  
  CONSTRAINT HOTEL_LIST_pk PRIMARY KEY(H_no),
  CONSTRAINT hotel_name_unique UNIQUE(h_name),
  CONSTRAINT hotel_phonenum_unique UNIQUE(h_phonenum),
  CONSTRAINT hotel_mail_unique UNIQUE(h_mail),
  CONSTRAINT hotel_address_unique UNIQUE(h_address),
  CONSTRAINT hotel_id_unique UNIQUE(h_id)
  );
  
CREATE SEQUENCE hotel_seq
START WITH 1
INCREMENT BY 1;


  insert into HOTEL values(HOTEL_SEQ.nextval, '롯데시티호텔', 010-2482-3322, 'jaja@naver.com', '제주 제주시 도령로 83', 6, 'lotte' ,1234,
  100,  15, ' 270여 개 브랜드가 입점해있는 롯데면세점이 있는 롯데시티호텔 제주에서 제주국제공항까지 차로 단 10분이 소요됩니다. 주변 관광지로는 차로 10분 거리의 이호테우해변, 차로 20분 거리의 용두암, 용연 계곡, 삼성혈 등이 있습니다. 또한, 차로 50분 거리에는 한라산 국립공원이 있습니다.'
  , 'lotte.png', '제주');
  
  
 insert into HOTEL values(HOTEL_SEQ.nextval, '그랜드 하얏트 서울', 010-4432-8632, 'siso5a@naver.com', '서울시 용산구 소월로 322', 8, 'hyatt_Seoul' ,1234,
  200,  18, '그랜드 하얏트 서울에서는 귀하를 더욱 특별하게, 더욱 품격있게, 잊지못할 순간으로 기억될 수 있도록 만들어드립니다. 서울의 상징인 남산에 위치한 그랜드 하얏트 서울 호텔에서 화려함과 절제미가 공존하며, 시대를 아우르는 품격과 세련됨을 경험하실 수 있습니다.'
  , 'hyatt.jpg', '서울');
  
  insert into HOTEL values(HOTEL_SEQ.nextval, '세인트존스경포호텔', 010-3262-3422, 'nadamee01@naver.com', '강원도 강릉시 창해로 307 ', 5, 'saint' ,1234,
  150,  13, '최적의 힐링을 선사하는 럭셔리 라이프스타일 브랜드, 세인트존스 호텔 
강원도 강릉시 강문동에 위치한 『세인트존스 호텔』은 ‘원스톱 힐링 엔터 스테이케이션’으로서 
호텔 내에서 여유로운 휴양을 즐길 수 있는 다양한 부대시설과 서비스를 선보이는 복합 문화 공간입니다.'
  , 'saint.jpg', '강원도');
  
    insert into HOTEL values(HOTEL_SEQ.nextval, '파라다이스호텔', 010-9762-8702, 'maoro99@naver.com', '부산 광역시 해운대 구중동 1408-5
', 6, 'paradise' ,1234,
  180,  14, '최적의 힐링을 선사하는 럭셔리 라이프스타일 브랜드, 세인트존스 호텔 
해운대 조망의 야외 스파 시설을 갖춘 파라다이스 호텔 부산은 해운대 해수욕장 바로 앞에 있습니다. 부산 2호선 해운대역 3번 출구에서 700m 거리에 있습니다. 해동 용궁사까지는 차로 약 20분이 소요되며 누리마루 APEC하우스도 차로 가까운 거리에 있습니다.'
  , 'paradise.jpg', '부산');
  
     insert into HOTEL values(HOTEL_SEQ.nextval, '라마다프라자광주호텔', 010-4092-5123, 'oop22san@naver.com', '광주광역시 서구 상무자유로 149
', 7, 'ramada' ,1234,
  190,  18, '라마다플라자 광주 호텔은 광주1호선 상무역 5번 출구에서 도보로 약 10분이면 도착하는 편리한 위치를 자랑합니다. 주변의 관광 명소로는 518 기념공원이 도보로 20분 거리에 있으며 광주의 대표적인 재래시장인 양동시장이 차로 15분 거리에 자리해 있습니다. 또한, 광주 예술의 거리까지 차로 20분이면 도착합니다.'
  , 'ramada.jpg', '광주');  
  
  
      insert into HOTEL values(HOTEL_SEQ.nextval, '코모도호텔', 010-0785-4541, 'cococosi@naver.com', '부산시 중구 중구로 151
', 8, 'comodo' ,1234,
  220,  22, '이순신 장군을 테마로 한 전통적인 인테리어가 인상적인 코모도 호텔은 부산 1호선 중앙역 17번 출구에서 약 460m 떨어져 있습니다. 사전 예약에 한하여 주말에만 부산 KTX 역에서 셔틀버스를 운영하고 있습니다. 지하철로 한 정거장 거리에 자갈치시장, BIFF 거리, 보수동 책방골목 등이 있습니다.'
  , 'comodo.jpg', '부산');   
  
  insert into HOTEL values(HOTEL_SEQ.nextval, '인터불고 대구', 010-1185-2331, 'jaki@naver.com', '대구시 수성구 팔현길 212
', 6, 'interbulgo' ,1234,
  170,  14, '호텔 인터불고 대구는 KTX 동대구역에서 차로 단 15분 거리에 있으며 엑스코가 차로 20분 거리에 있습니다. 또한, 주변 관광지로는 차로 20분 거리의 김광석다시그리기길, 차로 30분 거리의 서문시장과 안지랑 곱창거리 등이 있습니다.'
  , 'interbulgo.jpg', '대구');  
  
insert into HOTEL values(HOTEL_SEQ.nextval,'홀리데이인광주',010-1561-1555,'holy@naver.com','광주광역시 서구 상무누리로 55',6,'holyday',1234,100,9,'모던한 디자인으로 설계된 넓은 객실은 비즈니스 고객과 여행 고객 모두를 위해 최적화 되어 있으며 
품격있는 가족모임, 대규모 기업행사와 소규모 세미나를 위한 최상의 장소를 제공하고 있습니다.','hollyday.jpg','광주');

  
insert into HOTEL values(HOTEL_SEQ.nextval,'골든튤립스카이베이',010-5661-8421,'golden@naver.com','강원 강릉시 강문동 258-4',9,'tulip',1234,200,13,'한국의 고택에서 즐기는 고즈넉한 시간, 솔향기 가득 머금은 소나무 공원에서의 자연 힐링, 경포호수와 경포바다가 그려낸 아름다운 풍경 속에 자리한 골든튤립 스카이베이 경포 호텔은 사계절 내내 자연이 주는 선물과 어우러져 최상의 휴식과 여유를 누리시기 바랍니다.','tulip.jpg','강원도');  
  
  
insert into HOTEL values(HOTEL_SEQ.nextval,'제주 신라호텔',010-4162-6087,'shillajeju@naver.com','제주도 서귀포시 중문관광로 72 번길 75',12,'shilly',1234,200,28,'세계자연문화 유산인 제주의 아름다운 풍광을 담은 리조트로써 품격과 문화가 있는 휴식지','shilla.jpg','제주');


commit;


*/