package com.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.board.model.Page;
import com.board.model.ReplyVO;
import com.board.service.ReplyService;

/**
 * Handles requests for the application home page.
 */
@RestController
@RequestMapping(value = "/reply")
public class restReplyController {
	
	private static final Logger logger = LoggerFactory.getLogger(restReplyController.class);
	
	@Inject
	ReplyService rsvc;

	
	@RequestMapping(value = "/getReply")
	public Map<String, Object> getReply(
			@RequestParam(required = false, defaultValue = "1" , name="num" )int num ,
			@RequestParam("bno")int bno) throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
				
		Page page = new Page();
		
		int count = rsvc.getListCount();
		
		System.out.println("count====>"+count);
		
		page.setNum(num);
		page.setCount(count);
		
		
		List<ReplyVO> list = null;
		list = rsvc.getReply(page.getDisplayPost(), page.getPostNum(),bno); 
		
		map.put("list",list);
		map.put("page", page);
		return map;
	}
	
	@RequestMapping(value = "/regReply", method = RequestMethod.POST)
	public Map<String, Object> regReply(@RequestBody ReplyVO replyVO) throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		try {
			rsvc.insertReply(replyVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return map;
	}
	
	
	
	
	
}
