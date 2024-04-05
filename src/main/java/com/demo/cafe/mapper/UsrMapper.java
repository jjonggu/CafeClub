package com.demo.cafe.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.demo.cafe.dto.UsrDto;

@Mapper
public interface UsrMapper {
	
	/* 사용자 등록 */
	int insertSignin(UsrDto usrDto);
	
	/* 사용자 조회 */
	List<UsrDto> getSelectUsrList();
	
	/* 사용자 상세 조회 */
	UsrDto getSelectUsrDetail(String usr_email);

}
