package com.demo.cafe.dto;

import java.util.Date;

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
	private Date  signupDt;

}
