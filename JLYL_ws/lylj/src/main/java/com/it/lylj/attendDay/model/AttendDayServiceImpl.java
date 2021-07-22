package com.it.lylj.attendDay.model;

import java.util.Date;
import java.util.HashMap;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AttendDayServiceImpl implements AttendDayService{
	private final AttendDayDAO dao;


	@Override
	public AttendDayVO selectAttendDayByRegdate(AttendDayVO vo) {
		return dao.selectAttendDayByRegdate(vo);
	}


	@Override
	public int insertAttendDay(AttendDayVO vo) {
		return dao.insertAttendDay(vo);
	}


	@Override
	public int updateAttendDayByOffHour(AttendDayVO vo) {
		return dao.updateAttendDayByOffHour(vo);
	}


	@Override
	public int selectSumWeekWork() {
		return dao.selectSumWeekWork();
	}


	@Override
	public int selectSumMonthWork() {
		return dao.selectSumMonthWork();
	}


	@Override
	public int selectSumWeekWorkByMonth(HashMap<String, Object> map) {
		return dao.selectSumWeekWorkByMonth(map);
	}


	

}