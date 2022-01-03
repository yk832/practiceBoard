package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.BoardDao;
import com.board.model.BoardsVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	
	@Inject
	BoardDao dao;
	
	//게시글 목록
	@Override
	public List<BoardsVO> getBoardList() {
		// TODO Auto-generated method stub
		return dao.getBoardList();
	}

	//게시글 등록
	@Override
	public void insertBoard(BoardsVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.insertBoard(vo);
	}

	//게시글 상세보기
	@Override
	public BoardsVO getView(int bno) throws Exception {
		
		//게시글 조회수
		dao.updateVuew(bno);
		
		//게시글 상세보기
		BoardsVO vo = dao.getView(bno);
		
		return vo;
	}


}
