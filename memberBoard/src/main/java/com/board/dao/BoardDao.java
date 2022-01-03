package com.board.dao;

import java.util.List;

import com.board.model.BoardsVO;

public interface BoardDao {

	List<BoardsVO> getBoardList();

	public int insertBoard(BoardsVO vo)throws Exception;

	public BoardsVO getView(int bno) throws Exception ;

	public int updateVuew(int bno)throws Exception; 


}
