package com.demo.cafe.exception;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class Exception {
	
	@ExceptionHandler(SQLIntegrityConstraintViolationException.class)
	public ResponseEntity<Map<String, String>> hendleSQLIntegrityConstraintViolationException(SQLIntegrityConstraintViolationException ex){
		Map<String, String> response = new HashMap<>();
		response.put("usrEmail", "이메일 에러");
		return ResponseEntity.badRequest().body(response);
	}
	

}
