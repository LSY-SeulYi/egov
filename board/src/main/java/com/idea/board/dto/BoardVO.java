package com.idea.board.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardVO {

	private Long no;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updatedate;

}
