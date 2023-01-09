package edu.study.vo;

public class SearchCriteria extends Criteria {
	//SearchCriteria 클래스는 기존의 Criteria 클래스를 상속받았다.

	private String searchType =""; //검색선택
	private String keyword =""; //입력된 키워드
	
	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + "]";
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
}
