package com.it.lylj.breakDay.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BreakDayVO {
	private int breakdayNo;/* 휴가 번호 */
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date breakdayStart;/* 시작일 */
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date breakdayEnd;/* 마지막일 */
	private int empNo;/* 사원 번호 */
	private int breakthemeNo;/* 휴가 종류 번호 */
	private String breakthemeName;
	private String empName;
	private int breakdayUse;
}
