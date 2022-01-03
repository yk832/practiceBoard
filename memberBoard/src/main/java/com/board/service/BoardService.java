package com.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.board.model.BoardsVO;


public interface BoardService {

	List<BoardsVO> getBoardList() ;

	public void insertBoard(BoardsVO vo) throws Exception;

	public BoardsVO getView(int bno) throws Exception;

	
}
