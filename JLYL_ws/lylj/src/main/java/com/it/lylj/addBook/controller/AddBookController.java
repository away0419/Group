package com.it.lylj.addBook.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.it.lylj.addBook.model.AddBookService;
import com.it.lylj.addBook.model.AddBookVO;
import com.it.lylj.addBookFol.model.AddBookFolService;
import com.it.lylj.addBookFol.model.AddBookFolVO;
import com.it.lylj.common.ConstUtil;
import com.it.lylj.common.PaginationInfo;
import com.it.lylj.common.SearchVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/addressBook")
@RequiredArgsConstructor
public class AddBookController {
	private static final Logger logger=LoggerFactory.getLogger(AddBookController.class);
	
	private final AddBookService addBookService;
	private final AddBookFolService addBookFolService;
	
	@RequestMapping("/addressBookMain")
	public String bookMain(@ModelAttribute SearchVO searchVo, HttpSession session, Model model) {
		int empNo = Integer.parseInt((String)session.getAttribute("empNo"));
		logger.info("주소록 메인 페이지, 파라미터 empNo={}", empNo);
		
		/* 페이징 처리 */
		PaginationInfo pagingInfo = new PaginationInfo();
	    pagingInfo.setCurrentPage(searchVo.getCurrentPage());
	    pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
	    pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
	      
	    searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
	    searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
	    searchVo.setEmpNo(Integer.toString(empNo));
	    logger.info("페이지 번호 관련 셋팅 후 serachVo={}", searchVo);
	    
		/* 주소록 목록 조회 */
		List<Map<String, Object>> bookList =addBookService.selectAllAddBook(searchVo);
		logger.info("bookList.size()={}", bookList.size());
		
		int totalRecord = addBookService.selectAllTotalRecord(searchVo);
	    logger.info("totalRecord="+totalRecord);
	    pagingInfo.setTotalRecord(totalRecord);
	    
		/* top, 등록, 수정 카테고리 list처리 */
		List<AddBookFolVO> bookFolList = addBookFolService.selectFol(empNo);
		
		model.addAttribute("empNo", empNo);
		model.addAttribute("bookList", bookList);
		model.addAttribute("bookFolList", bookFolList);
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("navNo", 5);
		
		return "addressBook/addressBookMain";
	}
	
	@RequestMapping("/write")
	public String insert(@ModelAttribute AddBookVO vo, HttpSession session, Model model) {
		logger.info("주소록 등록 처리, 파라미터 vo={}", vo);
		int empNo = Integer.parseInt((String)session.getAttribute("empNo"));
		
		vo.setEmpNo(empNo);
		int cnt=addBookService.insertAddBook(vo);
		
		return "redirect:/addressBook/addressBookMain?empNo="+empNo;
	}
	
	@RequestMapping("/addressBookEdit")
	public void update(@RequestParam(defaultValue = "0")int addressBookNo, 
			HttpSession session, Model model) {
		logger.info("주소록 수정 페이지, 파라미터 addressBookNo={}", addressBookNo);
		int empNo = Integer.parseInt((String)session.getAttribute("empNo"));
		
		AddBookVO bookVo = addBookService.selectByNo(addressBookNo);
		logger.info("bookVo={}", bookVo);
		
		List<AddBookFolVO> bookFolList = addBookFolService.selectFol(empNo);
		
		model.addAttribute("bookVo", bookVo);
		model.addAttribute("bookFolList", bookFolList);
		model.addAttribute("navNo", 5);
	}
	
	@RequestMapping("/update")
	public String update_post(@ModelAttribute AddBookVO vo, HttpSession session) {
		logger.info("주소록 수정 처리, 파라미터 vo={}", vo);
		int empNo = Integer.parseInt((String)session.getAttribute("empNo"));
		int cnt=addBookService.updateAddBook(vo);
		
		return "redirect:/addressBook/addressBookMain?empNo="+empNo;
	}
	
	@GetMapping("/bookFolInfo")
	public void folInfo(@ModelAttribute AddBookFolVO folVo) {
		logger.info("카테고리 수정 페이지, folVo={}", folVo);
	}
}
