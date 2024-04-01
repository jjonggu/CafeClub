package com.demo.cafe.service;

import org.springframework.stereotype.Service;

import com.demo.cafe.dto.UsrDto;
import com.demo.cafe.mapper.UsrMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UsrService {
	
	private final UsrMapper usrMapper;

	public int insertSignin(UsrDto usrDto) {
		
		return usrMapper.insertSignin(usrDto);
	}

}
