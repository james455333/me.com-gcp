<%@ page import="com.mountainexploer.member.MemberGlobal" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Cookie[] cookies = null;
	String value1 = "";
	cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("rmPwd")){
				value1 = MemberGlobal.decryptString(MemberGlobal.KEY, cookie.getValue());
			}
		}
	}

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>岳進者</title>
    <link rel="stylesheet" href="/MountainExploer.com/css/other.css">
    <link rel="stylesheet" href="/MountainExploer.com/css/font.css">
    <link rel="stylesheet" href="/MountainExploer.com/css/personalPage.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="//code.jquery.com/jquery-1.9.1.js"></script>
    <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <style>

    </style>

<title>會員登入</title>
</head>
<body>
	    <div class="count1">
        <div class="count1_img">
            <img src="/MountainExploer.com/images/logo1.png">
            <hr>
            <h1 class="font">岳進者</h1>
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
            <div class="collapse navbar-collapse" id="navbarSupportedContent"
                include-html="/MountainExploer.com/forinclude/includeForIndex.html"></div>
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
                <div id="dialog-form" title="登入/註冊">
                    <div id="login-div" class="ui-dialog">
                        <div class="login-body" id="login-panel">
                            <table class="logintable" style="margin: 0 auto;">
                                <tbody>
                                    <tr style="text-align: right;">
                                        <th>帳號:</th>
                                        <td>
                                        	<input name="account" type="text" id="account" value="${cookie.rmAnt.value}" style=" width: 200px;border: 1px #ABADB3 solid;
                                          			padding: 5px 3px 5px; ">
                                          	<span>${errors.account}${errors.msg}</span>
                                        </td>
                                    </tr>
                                    <tr style="text-align: right;">
                                        <th>密碼:</th>
                                        <td>
                                            <div>
                                                <input type="password" id="password" name="password" value="<%=value1%>"
                                                    style="width: 200px;border: 1px #ABADB3 solid;padding: 5px 3px 5px; ">
                                                <span>${errors.password}${errors.msg}</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th></th>
                                        <td>
                                            <div>
                                                <a href="/MountainExploer.com/member/memberPwdFoundEntry">忘記密碼</a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th></th>
                                        <td>
                                            <div>
                                                <label>
                                                    	記住我<input type="checkbox" name="rememberMe" class="rememberMe" id="rememberMe" 
                                                    	<c:if test="${cookie.rememberMe.value == 'check'}">
                                                    		checked="checked"
                                                    	</c:if>
															value="true" style="float: left;">
                                                </label>
                                            </div>

                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>
                            <div style="text-align: center;">立即<a href="/MountainExploer.com/member/memberRegisterEntry" style="color:blue;">註冊</a>新帳號</div>
                        </div>
                    </div>
                </div>
                <button id="create-user">登入/註冊</button>
                <div class="pageControl">
                    <div class="pageControl_Tr">
                        <img src="/MountainExploer.com/images/personal/user.png" alt="" class="pageControl_Td" type="button"
                            id="userShow">
                    </div>
                    <div class="pageControl_Tr">
                        <img src="/MountainExploer.com/images/personal/id-card.png" alt="" class="pageControl_Td" type="button"
                            id="idCardShow">
                    </div>
                    <div class="pageControl_Tr">
                        <img src="/MountainExploer.com/images/personal/padlock.png" alt="" class="pageControl_Td" type="button"
                            id="padlockShow">
                    </div>
                    <div class="pageControl_Tr">
                        <img src="/MountainExploer.com/images/personal/trophy.png" alt="" class="pageControl_Td" type="button"
                            id="challengeShow">
                    </div>
                </div>
                <div class="personalInfo">
                    <div id="user" style="display: block;">
                        上傳頭像
                    </div>
                    <div id="idCard" style="display: none;">
                        個資內容<br>
                        相片:<br>
                        帳號:<br>
                        密碼:<br>
                        名稱:<br>
                        生日:<br>
                        性別:<br>
                    </div>
                    <div id="padLock" style="display: none;">
                        安全性<br>
                        帳號:(唯讀)<br>
                        密碼:(可更改)
                    </div>
                    <div id="challenge" style="display: none;">
                        挑戰<br>
                        (目前尚未有任何積分或挑戰成就)
                    </div>
                </div>

            </div>
            <div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a
                    href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
            <!-- 每頁不同內容到這邊結束 -->
            <div class="fix"><a href="#"><img src="/MountainExploer.com/images/arror.png" alt="" style=" width:60px; height:60px;"></a>
            </div>
            <!-- 此為快捷鍵；宣告為fix後會將DIV的層級拉到最外層(不管原本是寫在哪)也就是跳脫出原本的HTML框架 -->
        </div>

    </div>
    <footer id="footer">
        <a>全站導覽</a>
        <button id="demo1">確認demo1</button>
        <button id="demo2">錯誤demo2</button>
        <button id="demo3">確認提醒demo3</button>
        <button id="demo4">多重選項&提醒視窗demo4</button>
        <button id="demo5">Demo5</button>
        <button id="demo6">Demo6</button>
        <button id="button7"><a href=""><img src="/MountainExploer.com/images/personal/user.png" alt="" style="width: 30px;"
                    id="logInButton"></a></button>



    </footer>

</body>

<script src="/MountainExploer.com/js/upLoadImg.js"></script><!-- 上傳頭像 -->
<script src="/MountainExploer.com/js/table.js"></script>
<script src="/MountainExploer.com/js/login.js "></script>
<script src="/MountainExploer.com/js/topBar.js"></script>
<script src="/MountainExploer.com/js/sweetalert.js"></script>
<!--sweet alert-->
<script src="/MountainExploer.com/js/includejsp.js"></script>
<script src="/MountainExploer.com/js/personalContrul.js"></script><!-- 個人資料控制列表 -->




</html>