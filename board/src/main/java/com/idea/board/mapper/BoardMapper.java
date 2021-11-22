package com.idea.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.idea.board.dto.BoardVO;
import com.idea.board.dto.Paging;

public interface BoardMapper {

	public List<BoardVO> getList();
	
	public List<BoardVO> getListWithPaging(Paging paging);
	
	public void insert(BoardVO boardvo);
	
	public Integer insertSelectKey(BoardVO boardvo);
	
	public BoardVO read(Long no);
	
	public int delete(Long no);
	
	public int update(BoardVO boardvo);
	
	public int getTotalCount(Paging paging);

}
