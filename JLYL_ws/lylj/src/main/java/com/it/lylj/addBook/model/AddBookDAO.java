package com.it.lylj.addBook.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AddBookDAO {
	int insertAddBook(AddBookVO vo);
	List<AddBookVO> selectAllAddBook(int empNo);
}
