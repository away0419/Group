package com.it.lylj.electronicAppLine.model;

import java.util.List;

import com.it.lylj.electronic.model.ElectronicVo;

public interface ElectronicAppLineService {
	
	int insertAppLine(ElectronicAppLineVo vo);
	List<ElectronicAppLineVo> selectByElectronicNo(int ElectronicNo);
	int AcceptUpdateAppLine(ElectronicVo vo);
	int deleteAppLine(ElectronicAppLineVo vo);
	int selectForCheckExist(ElectronicAppLineVo vo);
	ElectronicAppLineVo selectAppLineCheck(ElectronicVo vo);
}
