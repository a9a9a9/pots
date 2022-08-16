<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<script>
 	var result = "${msg}";
 	if(result === "수정 완료"){
 		alert("게시글 수정 완료");
 	}
 </script>
<style>
	.board_content{
		min-height: 500px; background-color: #ffffff; font-size: 17px;
		font-family: 'Noto Sans KR', 'NanumGothic', '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, Sans-Serif;
		line-height: 35px; font-weight: 300; color: #333333; border: 0px;
		padding-bottom: 40px;
	}
</style>
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
			
				<div class="title-wrap border">
					<div class="title">
						<a href="" class="text">게시글</a>
					</div>
				</div>
				
				<form action="" method="post">
					<input type="hidden" name="square_num" value="${board.square_num }" />
					<input type="hidden" name="nick" value="${board.nick }" />
					<input type="hidden" name="square_title" value="${board.square_title }" />
					<input type="hidden" name="square_content" value="${board.square_content }" />
					<div class="table-row">
						<div class="subject">${board.square_title }</div>
					</div>
					
					<div class="table-row">
						<!-- 이미지 -->
						<span class="picture"><img src="/img/butsadm.gif" class="photo" alt=""></span>
						<!-- 작성자 -->
						<span class="v-bar"><span class="sv_member">${board.nick }</span></span>
						<!-- 댓글 -->
						<span class="v-bar">댓글 <span class="text-purple">0</span></span>
						<!-- 조회수 -->
						<span class="v-bar">조회수 <span class="text-purple">${board.square_view }</span></span>
						<!-- 작성일 -->
						<div class="right">${board.square_date }</div> 
					</div>
					
					<div class="table-view-article" style="min-height: 0px;">
						<pre class="board_content">${board.square_content}</pre>
						<div class="button-align right border">
							<div class="float-left" style="float:right;">
								<a href="${root}boardProc" class="button small border button-purple">목록</a>
								<c:set var="nick1" value="${sessionScope.nick}"/>
								<c:set var="nick2" value="${board.nick}"/>
								<c:if test="${nick1 eq nick2}">
									<button formaction="${root }index?formpath=modify" class="button small border button-purple">수정</button>
									<button formaction="${root }index?formpath=delete" class="button small border button-purple">삭제</button>
								</c:if>
							</div>
						</div>
					</div>
				</form>
		
			<div class="comment-wrap mg-top">
			    <div class="comment-title">댓글쓰기</div>
			    
				    <form action="${root}commentProc" method="post">
					    <input type="hidden" name="square_num" value="${board.square_num }">
					    <input type="hidden" name="id" value="${sessionScope.id }">
					    <input type="hidden" name="nick" value="${sessionScope.nick }">
						    
    			  		<div class="comment-wirte">
			                <div class="select">
				                <select name="" id="">
				                	<option value="">${sessionScope.nick }</option>
				                </select>
<!-- 				                <div class="input-check secret"> -->
<!-- 									<input type="checkbox" name="wr_secret" value="secret" id="wr_secret"> -->
<!-- 				                    <label for="wr_secret">비밀글</label> -->
<!-- 				                </div> -->
			                </div>
			                <textarea id="wr_content" name="comment_content" maxlength="10000" required class="required" placeholder="궁금한 점이 있으면 물어보세요!"></textarea>
<!-- 			                <div class="opentalk"><span class="input-check"> </span></div> -->
			                <input type="submit" id="btn_submit" class="button-apply" value="등록" style="border: solid 1px #333333;">
   	 			  		</div>
	   				 </form>
		   				 
		  		<div class="comment-list">
		        <ul>
		        	<c:set var="nick1" value="${sessionScope.nick}"/>
		        	<c:forEach var="c_list" items="${commentList}">
						<c:set var="nick2" value="${c_list.nick}"/>
						<c:choose>
						<c:when test="${nick1 eq nick2}">
		                    <li class="right">
	                            <div class="picture">
	                            <img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
	                            </div>
	                            <div class="balloon">
	                            <div class="speech"><span>${c_list.comment_content }</span></div>
	                            </div>
	                            <div class="option">
	                            <span class="v-bar">${c_list.nick}</span>
	                            <span >${c_list.comment_date }</span>
	                            <a href="${root}commentDelete?cNum=${c_list.comment_num}&bNum=${board.square_num}" >삭제</a> 
	                            </div>
	                        </li>
	                    </c:when>
	                    <c:otherwise>
	                        <li>
		                        <div class="picture">
		                        <img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
		                        </div>
		                        <div class="balloon">
		                        	<div class="speech">${c_list.comment_content }</div>
		                        </div>
		                        <div class="option">
		                        <span class="v-bar">${c_list.nick}</span>
		                        <span >${c_list.comment_date }</span>
		                        </div>
		                    </li>
                        </c:otherwise>
                        </c:choose>
                    </c:forEach>
             	 </ul>
  				</div>
 		  	 </div>
 		  	 
 		  </div>
		</div>
	</div>
</body>