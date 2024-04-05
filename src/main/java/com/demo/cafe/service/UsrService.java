package com.demo.cafe.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.demo.cafe.dto.UsrDto;
import com.demo.cafe.mapper.UsrMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UsrService {
	
	private final UsrMapper usrMapper;
	
	/* 사용자 등록 */
	public int insertSignin(UsrDto usrDto) {
		return usrMapper.insertSignin(usrDto);
	}
	
	/* 사용자 조회 */
	public List<UsrDto> getSelectUsrList() {
		return usrMapper.getSelectUsrList();
	}

	public UsrDto getSelectUsrDetail(String usr_email) {
		return usrMapper.getSelectUsrDetail(usr_email) ;
	}

}
