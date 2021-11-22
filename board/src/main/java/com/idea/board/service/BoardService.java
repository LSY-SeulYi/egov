package com.idea.board.service;

import java.util.List;

import com.idea.board.dto.BoardVO;
import com.idea.board.dto.Paging;

public interface BoardService {

	public void register(BoardVO boardvo);
	
	public BoardVO get(Long no);
	
	public boolean modify(BoardVO boardvo);
	
	public boolean remove(Long no);
	
	public List<BoardVO> getList(Paging paging);
	
	public int getTotal(Paging paging);
}
