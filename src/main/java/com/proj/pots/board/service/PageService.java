package com.proj.pots.board.service;

public class PageService {
	public static String getNavi(int currentPage, int pageBlock, int totalCount, String url) {
		int blockCnt = totalCount / pageBlock;
		
		if(totalCount % pageBlock > 0)
			blockCnt++;
		
		String result = "";
		result+="<ul><li><a href='"+url+(1)+"'><img src='/img/double_arrow_left.png' /></a></li>";
		
		int beforePage = currentPage-1;
		
		if(beforePage < 2) 
			beforePage = 1;
		
		result+="<li><a href='"+url+beforePage+"'><img src='/img/arrow_left.png' /></a></li>";
		
		for(int i = 1;i <= blockCnt; i++) {
			result+="<li ";
			if(currentPage == i)
				result+=" class='active'";
			// /quiz/memberListProc?currentPage=
			result+="><a href='"+url+i+"'> "+ i +" </a>";
			result+="</li>";
		}
		int afterPage = currentPage+1;
		
		if(afterPage >= blockCnt)
			afterPage = blockCnt;
		result+="<li><a href='"+url+afterPage+"'><img src='/img/arrow_right.png' /></a></li>";
		result+="<li><a href='"+url+(blockCnt)+"'><img src='/img/double_arrow_right.png' /></a></li></ul>";
		
		return result;
	}
}
