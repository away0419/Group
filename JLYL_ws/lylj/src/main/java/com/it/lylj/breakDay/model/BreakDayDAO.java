package com.it.lylj.breakDay.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BreakDayDAO {
	List<BreakDayVO> selectAllBREAKDAYByEmpNo(HashMap<String, Object> map);
	int selectCntAllBREAKDAYByEmpNo(int empNo);
}
