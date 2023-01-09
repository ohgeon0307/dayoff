package edu.study.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class PageMaker {
	//PageMaker, 페이지생성을 돕는 곳으로 계산식 메소드가 포함되어 있는 Vo라고 보면 되겠다.
	private int startPage; //페이지 네비게이션의 시작점
	private int endPage; // 페이지 네비게이션의 끝점
	private int totalCount; // 전체 게시물의 갯수
	private int displayPageNum = 10; // 1,2,3,4,5,6,7,8,9,10
	private boolean prev; //이전버튼
	private boolean next; //다음버튼
	//boolean type은 is값으로 나온다고 한다..
	
	//private SearchCriteria scri; //페이지 객체
	private SearchCriteria scri;


	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}
	
	public SearchCriteria getScri() {
		return scri;
	}

	public void setScri(SearchCriteria scri) {
		this.scri = scri;
	}

	
	
	public void calcData() {
		// 시작번호 끝번호 이전 다음 버튼을 보여주기 위한 계산식
		// Math.ceil() 함수는 주어진 숫자보다 크거나 같은 숫자 중 가장 작은 숫자를 Integer 로 반환한다. ex) 0.7 -> 1
		// 끝번호
		endPage = (int)Math.ceil(scri.getPage()/(double)displayPageNum)*displayPageNum;
		//cri.getPage가 1일때 displayPageNum이 10이면 1/10*10 = 1페이지	
		System.out.println("endPage"+endPage);
		// 시작점번호
		startPage = (endPage - displayPageNum) + 1;
		//endPage가 20이고, displayPageNum이 10일때 startPage는 11이 된다. 
		System.out.println("startPage"+startPage);
		// 전체 페이지 수
		int tempEndPage = (int)Math.ceil(totalCount/(double)scri.getPerPageNum());
		// tempEndPage는 게시글이 298개 있다면 298을 cri객체의 getPerPageNum(15)개로 나누어서 (298 / 15 = 19.86) Math.ceil을 통해 총 20개의 페이징을 만들어준다.
		System.out.println("tempEndPage"+tempEndPage);
		
		//만약 endPage가 tempEndPage보다 크다면 temp값을 end에 대입해준다.
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		//이전버튼 생략유무
		prev = (startPage ==1 ? false:true);
		//다음버튼 생략유무
		next = (endPage*scri.getPerPageNum() >= totalCount ? false:true);
		
	}
	
	public String encoding(String keyword) {
		//System.out.println("encoding test");
		String str = "";
		
		try {
			str = URLEncoder.encode(keyword,"UTF-8");
			//str에 URLEncode클래스의 encode메서드로 들어오는 keyword의 문자를 UTF-8로 변형해준다.
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return str;
		//이 메소드 종료지점(str값을 담고 넘어간다)
	}
}
