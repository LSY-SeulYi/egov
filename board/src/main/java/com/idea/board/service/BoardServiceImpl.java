package com.idea.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.idea.board.dto.BoardVO;
import com.idea.board.dto.Paging;
import com.idea.board.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {

		@Setter(onMethod_ = @Autowired)
		private BoardMapper mapper;

		@Transactional
		@Override
		public void register(BoardVO boardvo) {
			log.info("register : " + boardvo);
			mapper.insertSelectKey(boardvo);
				return;
		}

		@Override
		public BoardVO get(Long no) {
			
			log.info("get : "+no);
			return mapper.read(no);
		}

		@Transactional
		@Override
		public boolean modify(BoardVO boardvo) {
			
			log.info("modify : "+boardvo);
			boolean modifyResult = mapper.update(boardvo) == 1;
			return modifyResult;
		}

		@Transactional
		@Override
		public boolean remove(Long no) {
			log.info("remove : "+no);
			return mapper.delete(no) == 1;
		}

		@Override
		public List<BoardVO> getList(Paging paging) {
			log.info("get List with Paging : "+paging);
			return mapper.getListWithPaging(paging);
		}
		
		@Override
		public int getTotal(Paging paging) {
			log.info("get total count");
			return mapper.getTotalCount(paging);
		}
		
}
