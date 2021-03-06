<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주점</title>
<%@ include file="/template/head.jspf" %>
<style type="text/css">
	#content > h1{
		margin: 50px auto 30px auto;
	}
	#content > h1:first-letter { 
		font-size: 45px;
		border-top: 3px solid blue;
		padding-top: 2px;
	}
	h1 + div{
		widt: 830px;
	}
	#content{
		width: 830px;
		margin: 50px auto;
	}
	#title{
		width: 800px;
	}
	button{
	    width:80px;
	    background-color: royalblue;
	    border: none;
	    color: white;
	    padding: 7px 0px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 15px;
	    cursor: pointer;
	    border-radius: 10px;
	    margin-left: 5px;
	}
	#title{
		line-height: 80px;
		padding-left: 30px;
		font-size: 23px;
		border-top: 1px solid black;
		background-color: #F0FFFF;
	}
	#intro{
		width: 800px;
		line-height: 50px;
		padding-left: 30px;
		border-top: 1px solid lightgray;
		border-bottom: 1px solid lightgray;
	}
	#cont {
		width: 800px;
		height: 400px;
		padding: 30px 20px 30px 20px;
		border-bottom: 1px solid lightgray;
		margin-bottom: 10px;
	}
	#writer{
		float:left;
	}
	#date {
		margin-left: 60px;
	}
	#cnt{
		float: right;
		margin-right: 30px;
	}
	#btn{
		text-align:right;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<%@ include file="/template/header.jspf" %>
	
	<div id="content">
		<!-- content start -->
			<h1>공지사항</h1>
			<div>
				<div id="title" name="bbsTitle">
					${notice.title }
				</div>
				<div id="intro">
					<span id="writer">작성자 | ${notice.writer }</span>
					<span id="date">작성일 | ${notice.writedDate }</span>
					<span id="cnt">조회수  ${notice.cnt }</span>
				</div>
				<div id="cont">${notice.contents }</div>
			</div>
			
			<div id="btn">
				<button id="modyfy" type = "button" onclick ="location.href='noticeModify.jb?noticeNum=${notice.noticeNum }'" >수정</button>
				<button id="delete" type = "button" onclick ="location.href='noticeDelete.jb?noticeNum=${notice.noticeNum }'" >삭제</button>
				<button id="list" type = "button" onclick ="location.href='noticeList.jb?'">목록</button>
			</div>
		<!-- content end -->
	</div>
	
	<%@include file="/template/footer.jspf" %>
	

</body>
</html>