package com.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.model.BoardsVO;
import com.board.service.BoardService;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	
	@Inject
	BoardService svc;

	@RequestMapping(value = "/getBoardList")
	public String getBoardList(Model model) {
		
		List<BoardsVO> list = null;
		list = svc.getBoardList();
		
		model.addAttribute("list",list);
		return "board/boardList";
	}
	
	@RequestMapping(value = "/boardForm")
	public String boardForm(Model model)throws Exception {
		
		return "board/boardForm";
	}
	
	@RequestMapping(value = "/insertBoards")
	public String insertBoard(BoardsVO vo) throws Exception {
		
		svc.insertBoard(vo);
		
		return "redirect:/board/getBoardList";
	}
	
	@RequestMapping(value = "/getView")
	public String getView(@RequestParam("bno")int bno, Model model) throws Exception {
		//System.out.println(bno);
		BoardsVO vo = svc.getView(bno);
		
		
	
		model.addAttribute("view",vo);
		
		return "board/view";
	}
	
}
