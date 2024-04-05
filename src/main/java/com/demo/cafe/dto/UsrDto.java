package com.demo.cafe.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UsrDto {
	
	private int usrNo;
	private String usrEmail;
	private String usrName;
	private String usrPw;
	private String usrPhone;
	// 테이블 DATE 타입으로 생성 시 String 
	private String  signupDt;

}
