package com.idea.board.dto;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {

	private int firstPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private Paging paging;
	
	public PageDTO(Paging paging, int total) {
		this.paging = paging;
		this.total = total;
		this.endPage = (int) (Math.ceil(paging.getPageNum() / 10.0)) * 10;
		this.firstPage = this.endPage - 9;
		
		int realEnd = (int) (Math.ceil((total * 1.0) / paging.getAmount()));
		if (realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		this.prev = this.firstPage > 1;
		this.next = this.endPage < realEnd;
	}
	
}
