package edu.project.vo;

public class SearchCriteria extends Criteria {

	
	private String searchType = ""; //검색선택
	private String keyword = ""; //입력된 키워드
	private String list = "";
	
	public String getList() {
		return list;
	}
	public void setList(String list) {
		this.list = list;
	}
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