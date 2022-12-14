package com.it.lylj.boardComment.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardCommentDAO {
	int insertComment(BoardCommentVO commVo);
	int insertReply(BoardCommentVO commVo);
	List<BoardCommentVO> selectByNo(int boardNo);
	int deleteComm(int boardCommentNo);
}
