package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.ReplyDao;
import com.board.model.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Inject
	ReplyDao dao;
	
	
	/*
	 * @Override public List<ReplyVO> getReply(int bno) throws Exception { // TODO
	 * Auto-generated method stub return dao.getReply(bno); }
	 */


	@Override
	public int getListCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.getListCount();
	}


	@Override
	public List<ReplyVO> getReply(int displayPost, int postNum, int bno) throws Exception {
		// TODO Auto-generated method stub
		return dao.getReply(displayPost,postNum,bno);
	}


	@Override
	public int insertReply(ReplyVO replyVO) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertReply(replyVO);
	}

	
	
}
