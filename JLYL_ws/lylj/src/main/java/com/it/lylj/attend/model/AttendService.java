package com.it.lylj.attend.model;

public interface AttendService {
	int updateLateAttendByEmpNo(int empNo);
	AttendVO selectAttendByEmpNo(int empNo);

}
