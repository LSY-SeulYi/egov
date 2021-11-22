package com.idea.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.idea.board.dto.BoardVO;
import com.idea.board.dto.PageDTO;
import com.idea.board.dto.Paging;
import com.idea.board.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {

	private BoardService service;

	@GetMapping("/list")
	public void list(Paging paging, Model model) {
		
		log.info("list : "+paging);
		model.addAttribute("list", service.getList(paging));
		int total = service.getTotal(paging);
		log.info("total : "+ total);
		model.addAttribute("pageMaker", new PageDTO(paging, total));
	}
	
	@GetMapping("/register")
	public void register() {
	}
	
	@PostMapping("/register")
	public String register(BoardVO boardvo, RedirectAttributes rttr) {
		log.info("register : "+boardvo);
		service.register(boardvo);
		rttr.addFlashAttribute("result", boardvo.getNo());
		return "redirect:/board/list";
	}

	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("no") Long no, @ModelAttribute("paging") Paging paging, Model model) {
		log.info("/get or modify");
		model.addAttribute("boardvo", service.get(no));
	}
	
	@PostMapping("/modify")
	public String modify(BoardVO boardvo, @ModelAttribute("paging") Paging paging, RedirectAttributes rttr) {
		log.info("modify : "+boardvo);
		if(service.modify(boardvo)) {
			rttr.addFlashAttribute("result","success");
		}
		rttr.addAttribute("pageNum", paging.getPageNum());
		rttr.addAttribute("amount", paging.getAmount());
		rttr.addAttribute("type", paging.getType());
		rttr.addAttribute("keyword", paging.getKeyword());
		
		return "redirect:/board/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("no") Long no, Paging paging, RedirectAttributes rttr) {		
		log.info("remove : "+no);
		if(service.remove(no)) {
			rttr.addFlashAttribute("result", "success");
		}		
		return "redirect:/board/list" + paging.getListLink();
	}	

}
