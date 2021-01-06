<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>岳進者</title>
    <link rel="stylesheet" href="/MountainExploer.com/css/other.css">
    <link rel="stylesheet" href="/MountainExploer.com/css/font.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    <style>

    </style>
</head>

<body>
	<div>
		<c:choose>
			<c:when test="${!empty errors}">
				<script type="text/javascript" charset="UTF-8">
					var errors = "${errors.msg}";
				</script>
			</c:when>
			<c:otherwise>
				<script type="text/javascript">
					var errors = null;
				</script>
			</c:otherwise>
		</c:choose>
	</div>
    <div class="count1">
        <div class="count1_img">
            <img src="/MountainExploer.com/images/logo1.png">
            <hr>
            <h1 class="font">岳進者，不要logo，可能改成輪播</h1>
            <!-- <a class="font">岳進者</a> -->
        </div>
    </div>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light zline">
            <a class="navbar-brand" href="#"><img src="/MountainExploer.com/images/logo1.png" height="30%" width="30%"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent" include-html="/MountainExploer.com/forinclude/includeForIndex.html"></div>
        </nav>
    </header>
    <div class="div_ul">
        <div class="div_li1">
            <a></a>
        </div>
        <div class="div_li3">
            <a></a>
        </div>
        <div class="div_li2">
            <!-- 每頁不同的內容從這裡開始 -->
            <div class="secDivContent">
                
                   <!--上傳影像div開始-->
                <c:choose>
                	<c:when test="${empty Member.memberInfo.img_name}">
		                <img id="output" src="/MountainExploer.com/images/preset.png" />                		
                	</c:when>
                	<c:otherwise><img src="<c:url value='showUserImg?userSeq=${Member.seqno}'/>"></c:otherwise>
                </c:choose>
                <br/>
                
                <form action="<c:url value='/member/imgUpdateAction' />" method="POST" enctype="multipart/form-data">
                <div class="upLoadImg">
                    <input type="hidden" name="userSeqImg" class="userSeqImg" value="${Member.seqno}">
	                <input type="file" name="userFile" class="userFile" accept="image/*" onchange="loadFile(event)" required="required">
					<input type="submit" name="userImg" class="userImg" value="上傳頭貼">
	                <br>
                </div>
                </form>
                <a href="/MountainExploer.com/member/memberInfoEntry">回到會員中心</a>
<!--                 <a>上傳頭像</a> -->
                <!--上傳影像div結束-->
            </div> 
            <!-- 每頁不同內容到這邊結束 -->
        </div>
        
    </div>

    <footer id="footer">
        <a>全站導覽</a>
<!--         <button id="demo1">確認demo1</button> -->
<!--         <button id="demo2">錯誤demo2</button> -->
<!--         <button id="demo3">確認提醒demo3</button> -->
<!--         <button id="demo4">多重選項&提醒視窗demo4</button> -->
<!--         <button id="demo5">Demo5</button> -->
<!--         <button id="demo6">Demo6</button> -->
<!--         <button id="demo7">Demo7</button> -->



    </footer>
</body>
<script src="/MountainExploer.com/js/upLoadImg.js"></script><!-- 上傳頭像 -->
<script src="/MountainExploer.com/js/table.js"></script>
<script src="/MountainExploer.com/js/topBar.js"></script>
<!-- <script src="/MountainExploer.com/js/sweetalert.js"></script>sweet alert -->
<script src="/MountainExploer.com/js/includejsp.js"></script>
<script src="/MountainExploer.com/member/memberImageUpload.js"></script>
</html>