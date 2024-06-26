<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mzym.member.model.vo.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<style>
/*탈퇴 style*/
.main_content>div{
    border: 2px solid #1ABC9C;
    width: 45%;
    margin: auto;
    margin-top: 50px;
    margin: bottom 50px; 
    height: 350px;
    padding: 4%;
    border-radius: 10px;
}

.main_content{
        margin: auto;
        width: 100%;
    }
    
.resign_content>hr{border: 1px solid; color: #e0e0e0;}
.resign_content>h2{font-weight: bold;}
.resign_content input[type=password]{width: 400px;}

#btn_resign{
        background: rgb(231, 76, 60);
        color: white;
        width: 90px;
        font-weight: bold;
}

#btn_resign:hover{
    background: rgba(231, 77, 60, 0.872);;
    color: white;
}

#btn_cencle{
        background:#1ABC9C;
        color: white;
        width: 90px;
        font-weight: bold;
        margin-right: 10px;
}

#btn_cencle:hover{
    background: #1abc9ce0;
    color: white;
}

.btn_area{
    margin-left: 30%;
    margin-top: 30px;
}
</style>
</head>
<body>
<div class="wrap">
		 
	<%@ include file="/views/common/Mzym_header.jsp" %>
	
	  <%@ include file="/views/common/Mzym_sidebar.jsp" %>
		
      <!--section start-->    
      <section class="main_content">

        <div class="resign_content">
        	<form action="<%=contextPath%>/delete.me" method="post">
	            <h2>탈퇴안내</h2>
	            <hr>
	            <p style="color: #9e9e9e; font-size: small;">회원 탈퇴를 하기 전 안내사항을 꼭 확인해주세요</p>
	            <p style="font-weight: bold;">사용하고 계신 아이디(user 01)는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</p>
	             <input type="hidden" name="userId" value="<%=loginUser.getUserId()%>">
	            <input type="password" class="form-control" name="userPwd" placeholder="비밀번호입력">
	            <table class="btn_area">
	                <tr>
	                    <td><a href="<%=contextPath%>" class="btn" id="btn_cencle">취소</a></td>
	                    <td><button type="submit" class="btn" id="btn_resign">탈퇴</button></td>
	                </tr>
	            </table>
			</form>
        </div>

    </section>
    <!--section end-->
    
    <%@ include file="/views/common/Mzym_footer.jsp" %>
		
</div>


</body>
</html>