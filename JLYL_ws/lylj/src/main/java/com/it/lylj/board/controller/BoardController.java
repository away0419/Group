package com.it.lylj.board.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.it.lylj.board.model.BoardService;
import com.it.lylj.board.model.BoardVO;
import com.it.lylj.boardFol.model.BoardFolService;
import com.it.lylj.boardFol.model.BoardFolVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/board")
@RequiredArgsConstructor
public class BoardController {
	private static final Logger logger=LoggerFactory.getLogger(BoardController.class);
	
	private final BoardService boardSerive;
	private final BoardFolService boardFolService;
	

	/*        메인        */

	@RequestMapping("/boardMain")
	public String main(Model model) {
		logger.info("게시판 메인 페이지");
		model.addAttribute("navNo",6);
		
		return "board/boardMain";
	}
	
	/*        게시글 등록        */
	@RequestMapping("/boardWrite")
	public void write(Model model) {
		logger.info("게시판 등록 페이지");
		
		/* 게시판 폴더 처리 */
		List<BoardFolVO> folList = boardFolService.selectBoardFol();
		logger.info("게시판 폴더 조회, folList.size={}", folList.size());
		
		model.addAttribute("folList", folList);
		model.addAttribute("navNo",6);

	}
	
	@PostMapping("/boardWrite")
	public String write_post(@ModelAttribute BoardVO vo, Model model) {
		logger.info("게시판 등록 처리, 파라미터 vo={}", vo);
		
		/* 파일 업로드 처리*/
		
		
		
		/* 글등록 처리 */
		int cnt=boardSerive.insertBoard(vo);
		logger.info("게시판 등록 결과, cnt={}", cnt);
		
		String msg="등록을 실패하였습니다.", url="/board/boardMain";
		if(cnt>0) {
			msg="등록 성공";
			url="/board/boardList?boardFolderNo="+vo.getBoardFolderNo();
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@PostMapping("/boardWrite")
	public String write_post(@ModelAttribute BoardVO vo, Model model) {
		logger.info("게시판 등록 처리");
		
		/* 파일 업로드 처리*/
		
		
		
		/* 글등록 처리 */
		int cnt=boardSerive.insertBoard(vo);
		logger.info("게시판 등록 결과, cnt={}", cnt);
		
		String msg="등록을 실패하였습니다.", url="/board/boardMain";
		if(cnt>0) {
			msg="등록 성공";
			url="/board/boardMain";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}


	/*        게시글 목록        */
	@RequestMapping("/boardList")	
	public String list(@RequestParam(defaultValue = "0")int boardFolderNo, Model model) {
		
		if(boardFolderNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/board/boardMain");
			
			return "common/message";
		}
		
		return "redirect:/board/boardList?boardFolderNo="+boardFolderNo;
	}
	
	@GetMapping("/boardList")
	public String list_param(@RequestParam(defaultValue = "0")int boardFolderNo, Model model) {
		logger.info("게시판 목록 페이지, 파라미터 boardFolderNo={}", boardFolderNo);
		
		if(boardFolderNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/board/boardMain");
			
			return "common/message";
		}
		
		List<BoardVO> list = boardSerive.selectBoard(boardFolderNo);
		logger.info("게시판 목록 조회, list.size={}", list.size());
		
		model.addAttribute("list", list);
		model.addAttribute("navNo", 6);
		
		return "board/boardList";
	}
	
	/*        게시글 상세보기        */
	@RequestMapping("/countUpdate")
	public String hitsUpdate(@RequestParam(defaultValue = "0")int boardNo, Model model) {
		logger.info("조회수 증가, 파라미터 boardNo={}", boardNo);
		
		if(boardNo==0) {
			model.addAttribute("msg", "잘못된 url 입니다.");
			model.addAttribute("url", "/board/boardMain");
			
			return "common/message";
		}
		
		int cnt = boardSerive.updateReadCount(boardNo);
		logger.info("조회수 증가 처리, cnt={}", cnt);
		
		return "redirect:/board/boardDetail?boardNo="+boardNo;
		
	}
	@RequestMapping("/boardDetail")
	public String detail(@RequestParam(defaultValue = "0")int boardNo, Model model) {
		logger.info("게시판 상세보기 페이지, 파라미터 boardNo={}", boardNo);
		
		BoardVO vo = boardSerive.selectByNo(boardNo);
		logger.info("글 상세보기 조회, vo={}", vo);
		
		model.addAttribute("vo", vo);
		model.addAttribute("navNo",6);
		
		return "board/boardDetail";
	}

	/*        게시글 수정        */
	@RequestMapping("/boardEdit")
	public String eidt(Model model) {
		logger.info("게시판 수정 페이지");
		model.addAttribute("navNo",6);

		return "board/boardEdit";
  }
}
