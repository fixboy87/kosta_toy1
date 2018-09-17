package yanoll.review.domain;

import java.util.Date;

public class Review_ReplyVO {

	private Integer r_r_no;
	private Integer r_no;
	private String r_r_content;
	private String id;
	private Integer userNo;
	private Date r_r_redate;
	private Date r_r_updatedate;

	public Review_ReplyVO() {

	}

	public Review_ReplyVO(Integer r_r_no, Integer r_no, String r_r_content, String id, Integer userNo, Date r_r_redate,
			Date r_r_updatedate) {
		super();
		this.r_r_no = r_r_no;
		this.r_no = r_no;
		this.r_r_content = r_r_content;
		this.id = id;
		this.userNo = userNo;
		this.r_r_redate = r_r_redate;
		this.r_r_updatedate = r_r_updatedate;
	}

	public Integer getR_r_no() {
		return r_r_no;
	}

	public void setR_r_no(Integer r_r_no) {
		this.r_r_no = r_r_no;
	}

	public Integer getR_no() {
		return r_no;
	}

	public void setR_no(Integer r_no) {
		this.r_no = r_no;
	}

	public String getR_r_content() {
		return r_r_content;
	}

	public void setR_r_content(String r_r_content) {
		this.r_r_content = r_r_content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getUserNo() {
		return userNo;
	}

	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}

	public Date getR_r_redate() {
		return r_r_redate;
	}

	public void setR_r_redate(Date r_r_redate) {
		this.r_r_redate = r_r_redate;
	}

	public Date getR_r_updatedate() {
		return r_r_updatedate;
	}

	public void setR_r_updatedate(Date r_r_updatedate) {
		this.r_r_updatedate = r_r_updatedate;
	}

	@Override
	public String toString() {
		return "Review_ReplyVO [r_r_no=" + r_r_no + ", r_no=" + r_no + ", r_r_content=" + r_r_content + ", id=" + id
				+ ", userNo=" + userNo + ", r_r_redate=" + r_r_redate + ", r_r_updatedate=" + r_r_updatedate + "]";
	}

}

/*
create table REVIEW_REPLY(

    r_r_no NUMBER,
    userNo NUMBER not null,
    id VARCHAR2(10)not null,
    r_r_redate date,
    r_r_updatedate date,
    r_r_content VARCHAR2(1000) not null,
    r_no number

);
 * 
 * alter table REVIEW_REPLY add constraint review_repley_no_pk primary key
 * (r_r_no);
 * 
 * alter table REVIEW_REPLY add constraint repley_r_no_fk foreign key (r_no)
 * references review_board(r_no);
 * 
 * create SEQUENCE repley_seq;
 */
