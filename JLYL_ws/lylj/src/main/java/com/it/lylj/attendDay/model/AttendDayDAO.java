package com.it.lylj.attendDay.model;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AttendDayDAO {
	AttendDayVO selectAttendDayByRegdate(AttendDayVO vo);
	int insertAttendDay(AttendDayVO vo);
	int updateAttendDayByOffHour(AttendDayVO vo);
	int selectSumWeekWork(int empNo);
	int selectSumMonthWork(HashMap<String, Object> map);
	int selectSumWeekWorkEx(int empNo);
	int selectSumMonthWorkEx(HashMap<String, Object> map);
	int selectLeftTimeWeek(int empNo);
	int selectDayWorkEx(HashMap<String, Object> map);
	int selectSumWeekWorkByMonth(HashMap<String, Object> map);
	List<AttendDayVO> selectAttendMonth(HashMap<String, Object> map);
	int updateAttendDay(AttendDayVO vo);
	List<Map<String,Object>> selectSumConditionByGroup(HashMap<String, Object> map);
	List<ConditionViewVO> selectAllConditionByDepartMent(HashMap<String, Object> map);
	List<ConditionViewVO> selectAllConditionByMonth(HashMap<String, Object> map);
	int selectCntConditionByMonth(HashMap<String, Object> map);
	int selectCntBreakDayByMonth(HashMap<String, Object> map);
	int selectAllCntConditionByMonth(HashMap<String, Object> map);
	List<ConditionViewVO> selectAttendDayByFlag(int currentPage);
	int selecCnttAttendDayByFlag();
	int updateAttendDayByFlag(HashMap<String, Object> map);
	int updateAutoOffHour();
}
