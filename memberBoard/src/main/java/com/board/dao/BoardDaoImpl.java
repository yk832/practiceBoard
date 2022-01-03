package com.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.model.BoardsVO;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Inject
	private SqlSession sql;
	private static String namespace = "com.board.mappers.boardsMapper";
	
	@Override
	public List<BoardsVO> getBoardList() {
		// TODO Auto-generated method stub
		return sql.selectList(namespace + ".goBoardList");
	}

	@Override
	public int insertBoard(BoardsVO vo) throws Exception {
		// TODO Auto-generated method stub
		return sql.insert(namespace+ ".insertBoards",vo);
	}

	@Override
	public BoardsVO getView(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace + ".getView",  bno);
	}

	@Override
	public int updateVuew(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sql.update(namespace + ".updateViewCnt" , bno);
	}

}
