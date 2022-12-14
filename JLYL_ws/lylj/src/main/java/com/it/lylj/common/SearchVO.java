package com.it.lylj.common;

/**
 * 검색 정보를 담고있는 Bean
 * 페이징 처리 관련 변수 포함
*/

public class SearchVO {
	/** 검색조건 */
	private String searchCondition = "";
	
	/** 검색키워드 */
	private String searchKeyword = "";
    
	/** 검색 사용여부 */
	private String searchUseYn = "";
	
	/** 현재 페이지 */
	private int currentPage = 1;
	
	/** 동 */
	private String dong = "";
	
	/* 게시판 폴더 번호 */
	private int boardFolderNo;
	
	/* 전자결재 결재문서의 유저 번호*/
	private String empNo;
	
	/* 주소록 폴더 번호 */
	private int addressFolderNo;
	
    /**블럭당 보여질 페이지 수,  페이지 사이즈 */
    private int blockSize; // properties에서 설정
    
    /** 시작 인덱스 */
    private int firstRecordIndex = 1;
    
    /** 끝 인덱스 */
    private int lastRecordIndex = 1;
    
    
    
    /**페이지 별 레코드 갯수 (pageSize) */
    private int recordCountPerPage; 
    
    
    
   /**
     * 검색 조건을  설정한다.
     * @param bean 검색조건
     */
    public void setSearchVO(SearchVO bean){
    	this.currentPage = bean.currentPage;
    	this.searchCondition = bean.getSearchCondition();
    	this.searchKeyword = bean.getSearchKeyword();
    	this.searchUseYn = bean.getSearchUseYn();
    	this.blockSize = bean.blockSize;
    	this.firstRecordIndex = bean.firstRecordIndex;
    	this.lastRecordIndex = bean.lastRecordIndex;
    	this.recordCountPerPage = bean.recordCountPerPage;
    	this.dong=bean.dong;
    	this.boardFolderNo=bean.boardFolderNo;
    	this.empNo=bean.empNo;
    }

    public String getSearchCondition() {
    	return searchCondition;
    }

    public void setSearchCondition(String searchCondition) {
    	this.searchCondition = searchCondition;
    }

    public String getSearchKeyword() {
    	return searchKeyword;
    }

    public void setSearchKeyword(String searchKeyword) {
    	this.searchKeyword = searchKeyword;
    }

    public String getSearchUseYn() {
    	return searchUseYn;
    }

    public void setSearchUseYn(String searchUseYn) {
    	this.searchUseYn = searchUseYn;
    }

    public int getCurrentPage() {
    	return currentPage;
    }

    public void setCurrentPage(int currentPage) {
    	this.currentPage = currentPage;
    }

    public int getBlockSize() {
    	return blockSize;
    }

    public void setBlockSize(int blockSize) {
    	this.blockSize = blockSize;
    }

    public int getFirstRecordIndex() {
    	return firstRecordIndex;
    }

    public void setFirstRecordIndex(int firstRecordIndex) {
    	this.firstRecordIndex = firstRecordIndex;
    }

    public int getLastRecordIndex() {
    	return lastRecordIndex;
    }

    public void setLastRecordIndex(int lastRecordIndex) {
    	this.lastRecordIndex = lastRecordIndex;
    }

    
	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}

	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}
	

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public int getBoardFolderNo() {
		return boardFolderNo;
	}

	public void setBoardFolderNo(int boardFolderNo) {
		this.boardFolderNo = boardFolderNo;
	}
	

	public String getEmpNo() {
		return empNo;
	}

	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}

	public int getAddressFolderNo() {
		return addressFolderNo;
	}

	public void setAddressFolderNo(int addressFolderNo) {
		this.addressFolderNo = addressFolderNo;
	}

	@Override
	public String toString() {
		return "SearchVO [searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", searchUseYn="
				+ searchUseYn + ", currentPage=" + currentPage + ", dong=" + dong + ", boardFolderNo=" + boardFolderNo
				+ ", empNo=" + empNo + ", addressFolderNo=" + addressFolderNo + ", blockSize=" + blockSize
				+ ", firstRecordIndex=" + firstRecordIndex + ", lastRecordIndex=" + lastRecordIndex
				+ ", recordCountPerPage=" + recordCountPerPage + "]";
	}

}
 