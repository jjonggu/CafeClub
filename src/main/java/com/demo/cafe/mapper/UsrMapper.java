package com.demo.cafe.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.demo.cafe.dto.UsrDto;

@Mapper
public interface UsrMapper {

	int insertSignin(UsrDto usrDto);

}
