package com.it.lylj.schedule.model;

import java.util.List;

public interface ScheduleService {
	
	int insertSchedule(ScheduleVO vo);
	List<ScheduleVO> listSchedule();
	
}