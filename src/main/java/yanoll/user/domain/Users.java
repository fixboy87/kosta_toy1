package yanoll.user.domain;

import java.io.Serializable;

/*
DROP TABLE users;
DROP SEQUENCE users_seq;

CREATE TABLE users (
    userNo      NUMBER,
    id          VARCHAR2(20) NOT NULL,
    password    VARCHAR2(30) NOT NULL,
    name        VARCHAR2(30) NOT NULL,
    tel         VARCHAR2(20) NOT NULL,
    email       VARCHAR2(40) NOT NULL,
    gender      VARCHAR2(10),
    birth       VARCHAR2(30),
    
    CONSTRAINT users_userNo_pk PRIMARY KEY(userNo),
    CONSTRAINT users_id_unique UNIQUE(id),
    CONSTRAINT users_email_unique UNIQUE(email),
    CONSTRAINT users_gender_check CHECK(gender = 'male' OR gender = 'female')
    );
    
CREATE SEQUENCE users_seq
    START WITH 1
    INCREMENT BY 1;

insert into users(
    userno, id, password, name, tel, email, gender, birth
    ) values (
    users_seq.nextval, 'admin', 'admin', 'admin', '1111', 'admin@admin.com', 'male', '1987-08-04'
    );
    
insert into users(
    userno, id, password, name, tel, email, gender, birth
    ) values (
    users_seq.nextval, 'user1', 'user', 'user1', '010-1111-1111', 'user1@user.com', 'male', '1987-01-01'
    );
    
insert into users(
    userno, id, password, name, tel, email, gender, birth
    ) values (
    users_seq.nextval, 'user2', 'user', 'user2', '010-2222-2222', 'user2@user.com', 'female', '1987-03-10'
    );
    
insert into users(
    userno, id, password, name, tel, email, gender, birth
    ) values (
    users_seq.nextval, 'user3', 'user', 'user3', '010-3333-3333', 'user3@user.com', 'male', '1987-02-28'
    );

insert into users(
    userno, id, password, name, tel, email, gender, birth
    ) values (
    users_seq.nextval, 'user4', 'user', 'user4', '010-4444-4444', 'user4@user.com', 'female', '1987-12-30'
    );
    
select * from users;
 */
 

public class Users implements Serializable{
	private int userNo;
	
	private String id;
	private String password;
	private String name;
	private String tel;
	private String email;
	
	private String gender;
	private String birth;
	
	
	
	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	
	public Users() {};
	
	@Override
	public String toString() {
		return "Users [userNo=" + userNo + ", id=" + id + ", password=" + password + ", name=" + name + ", tel=" + tel
				+ ", email=" + email + ", gender=" + gender + ", birth=" + birth + "]";
	}
}