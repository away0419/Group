package com.it.lylj.emp.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.mail.HtmlEmail;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.it.lylj.common.SearchVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class EmpServiceImpl implements EmpService{
	private final EmpDAO empDao;
	private final PasswordEncoder passwordEncoder;
	private static final Logger logger = LoggerFactory.getLogger(EmpServiceImpl.class);


	 
	@Transactional
	@Override
	public int insertEmp(EmpVO vo) {
		vo.setEmpPwd(passwordEncoder.encode(vo.getEmpPwd()));
		return empDao.insertEmp(vo);
	}

	@Override
	public int loginProc(int empNo, String empPwd) {
		String dbPwd = empDao.selectPwd(empNo);
		
		int result = 0;
		if(dbPwd==null || dbPwd.isEmpty()) {
			result =ID_NONE;
		}else {
			if(passwordEncoder.matches(empPwd, dbPwd)) {
				result = LOGIN_OK;
			}else {
				result = PWD_DISAGREE;
			}
			
		}
		
		return result;
	}

	@Override
	public EmpVO selectByEmpNo(int empNo) {
		return empDao.selectByEmpNo(empNo);
	}

	@Override
	public Map<String, Object> selectstamp(String userNo) {
		return empDao.selectstamp(userNo);
	}

	@Override
	public Map<String, Object> selectstampList(String empNo) {
		Map<String, Object> map = empDao.selectstampList(empNo);
		return map;
		
	}

	@Override
	public int selectTotalEmp(SearchVO searchVo) {
		return empDao.selectTotalEmp(searchVo);
	}

	@Override
	public List<EmpVO> selectAllEmpList(SearchVO searchVo) {
		return empDao.selectAllEmpList(searchVo);
	}

	@Override
	public List<EmpVO> selectAllEmp() {
		return empDao.selectAllEmp();
	}

	@Override
	public int updateEmp(EmpVO vo) {
		return empDao.updateEmp(vo);
	}

	@Override
	public int deleteEmp(int empNo) {
		return empDao.deleteEmp(empNo);
	}

	@Override
	public String checkEmail(int empNo) {
		return empDao.checkEmail(empNo);
	}

	@Override
	public int updateTempPwd(EmpVO vo) {
		vo.setEmpPwd(passwordEncoder.encode(vo.getEmpPwd()));
		return empDao.updateTempPwd(vo);
	}

	@Override
	public void sendEmail(EmpVO vo) {
		//??????????????????
		String charSet = "utf-8";						//?????????
		String hostSMTP = "smtp.gmail.com";				//??????
		String hostSMTPid = "gisungj5027@gmail.com";	//?????? ???????????????
		String hostSMTPpwd = "gksmfdnffla!";			//?????? ??????
		
		//??????????????? email
		String fromEmail = "gisungj5027@gmail.com"; //???????????? ???????????? ???????????? ???????????????
		String fromName = "IU????????????";
		String subject = "";
		String msg = "";
		
		//????????????
		subject = "IU???????????? ?????? ???????????? ?????????.";
		msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
		msg += "<h3 style='color: blue;'>";
		msg += vo.getEmpNo()+"?????? ?????? ???????????? ?????????. ??????????????? ???????????? ???????????????.</h3>";
		msg += "<p>?????? ???????????? : ";
		msg += vo.getEmpPwd()+"</p>";
		
		// ?????? ?????? E-Mail ??????
		String mail = vo.getEmpEmail();
		logger.info("vo={}",vo);
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465); //????????? ????????? 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("???????????? ?????? : " + e);
		}
	}

	@Override
	public String selectPwd(int empNo) {
		return empDao.selectPwd(empNo);
	}

	@Override
	public List<EmpVO>  selectAllEmpForEle() {
		return empDao.selectAllEmpForEle();
	}

	@Override
	public List<EmpVO> selectSearchNum(int searcNo) {
		return empDao.selectSearchNum(searcNo);
	}

	@Override
	public int selectCountByEmpNo(int empNo) {
		return empDao.selectCountByEmpNo(empNo);
	}

	@Override
	public List<HashMap<String, Object>> selectAge() {
		return empDao.selectAge();
	}

	@Override
	public List<HashMap<String, Object>> selectAgeGrop() {
		return empDao.selectAgeGrop();
	}

	@Override
	public List<HashMap<String, Object>> selectJoinLeave() {
		return empDao.selectJoinLeave();
	}

	@Override
	public int selectTotalEmpCount() {
		return empDao.selectTotalEmpCount();
	}

	@Override
	public int selectTotalAdmin() {
		return empDao.selectTotalAdmin();
	}

}

