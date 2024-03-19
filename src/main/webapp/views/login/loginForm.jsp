<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.mzym.member.model.vo.Member" %>
<%
	String contextPath = request.getContextPath(); // "/web"

	Member loginUser = (Member)session.getAttribute("loginUser");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MZYM �α���</title>

<!-- ��Ÿ�� -->
 <!-- ��Ʈ��Ʈ�� ����� ���� CDN ��� ���� -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <!-- --------------------------------------- -->

  <style>
      /* div{ border: 1px solid red;} */

      *{
          user-select: none;
      }

      body {
          background-color: gray; /* ������ ������ ���� ȸ������ ���� */
      }   

      a { color :black; }

      .wrap,
      .wrap * {
          box-sizing: border-box;
      }

      .wrap {
          margin: auto;
          width: 80%;
          max-width: 1300px;
          text-align: center;
      }

      /* Section ���� ��Ÿ��*/
      .main_content {
          width: 70%;
          margin: auto;
          margin-top: 50px;
          margin-bottom: 50px;
          min-height: 500px;
          padding: 50px;
          /* border-radius: 20px; */
          background-color: white;
      }
      .main_content * {
          background-color: white;
      }

      .login_header hr {
          border: none;
          width: 100%;
          height: 1px;
          background: black; /* ������ ���������� ���� */
          margin: 0; /* �����ڸ��� �� ���� ������ ���� */
          user-select: none;
      }

      .login_content{
          height:900px; 
          display: flex;
          flex-direction: column;
      }
      .login_header{
          height: 20%;
          display: flex;
          flex-direction: column;
      }

      .login_title{ 
          height: 60%;
          display: flex;
      }
      
      .login_title_left, .login_title_right{ width: 10%; }
      .login_title_center { width: 80%; }

      .login_select{
          height: 40%;
          display: flex;
      }

      .login_select_user, .login_select_trainer {  width: 50%; margin: auto; margin-top: 3%; }
      
      .login_body{
          height: 70%;
          margin: auto;
          width: 100%;
          display: flex;
          flex-direction: column;
          margin-bottom: 5%;
      }

      .login_body hr {
          border: none;
          width: 100%;
          height: 1px;
          background: black; /* ������ ���������� ���� */
          margin: 0; /* �����ڸ��� �� ���� ������ ���� */
          user-select: none;
      }

      .login_input{
          height: 85%;
          display: flex;
          flex-direction: column;
      }

      .login_input_id, .login_input_pwd { 
          height: 35%;
          margin: auto;
          padding: 3%;
      }

      .login_input_pwd {
          position: relative;
      }

      .login_input_pwd button {
          position: absolute;
          right: 5%;
          top: 45%;
          transform: translateY(-50%);
      }
      
      .login_input_btn { 
          height: 30%;
          padding: 3%;
      }

      .login_input_id > input{
          height: 80%;
          width: 100%;
      }

      .login_input_pwd > input{
          height: 80%;
          width: 100%;
      }

      .login_input_btn > button{
          width: 70%;
          height: 80%;
      }

      .login_search{
          height: 15%;
          display: flex;
      }

      .login_search_id, .login_search_pwd { 
          width: 49%;
      }
      .login_search_center {
          width: 2%;
      }

      .login_footer{
          /* border: 1px solid green; */
          height: 20%;
      }

      .login_footer > button {
          width: 65%;
          height: 40%;
          font-size: large;
      }

      .btn {
          background-color: #1ABC9C;
          border: solid #1ABC9C;
          color: white;
      }

      .btn:hover{
          background: #19b192;
          border: solid #19b192;
          color: white;
      }

      /* �⺻ Ŀ�� ���� */
      .login_select_user h5,
      .login_select_trainer h5 {
          cursor: pointer;
          user-select: none;
      }

      /* Ŭ�� Ŀ�� ���� */
      .login_select_user h5:hover,
      .login_select_trainer h5:hover {
          cursor: pointer;
      }

      

  </style>

</head>


<body>
	<%
        String alertMsg = (String) request.getAttribute("alertMsg");
        if (alertMsg != null) {
            out.println("<script>alert('" + alertMsg + "');</script>");
        }
    %>

	<div class="wrap">

        <!-- section start -->
        <section class="main_content">

            <div class="login_content">
                
                <!-- �α��� ��� -->
                <div class="login_header">

                    <div class="login_title">

                        <div class="login_title_left">
                            <button style="border: none;"><img src="<%=contextPath %>/resources/img/btn/backward-arrow_50x50.png"></button>
                        </div>

                        <div class="login_title_center">
                            <h2 style="text-align: center;">�α���</h2>
                        </div>

                        <div class="login_title_right"></div>
                    </div>

                    <div class="login_select">

                        <div class="login_select_user">
                          <h5 id="selectUser">ȸ�� �α���</h5>
                        </div>

                        <div class="login_select_trainer">
                          <h5 id="selectTrainer">Ʈ���̳� �α���</h5>
                        </div>
                    </div>
                    <hr>
                </div>
                <!-- �α��� ��� ��-->


                <!-- �α��� �ٵ�-->
                <div class="login_body">
                    <div class="login_input">
                    
                            <form action='<%= contextPath %>/login.me' method="post" style="height: 100%;" id="login_form">
                               
                               <input type="hidden" name="status" id="select_user">
                               
                                <div class="login_input_id">
                                    <input type="text" class="form-control" placeholder="���̵� �Է����ּ���" required name="userId">
                                </div>

                                <div class="login_input_pwd">
                                    <input type="password" class="form-control" placeholder="��й�ȣ�� �Է����ּ���" required name="userPwd" id="passwordInput">
                                    <button style="border: none;" id="showPasswordBtn"><img src="<%=contextPath %>/resources/img/icon/show_password_icon_50x50.png"></button>
                                </div>

                                <div class="login_input_btn">
                                    <button type="submit" class="btn" style="font-size: larger;">�α���</button>
                                </div>
                                
                            </form>

                    </div>

                    <div class="login_search">
                        
                        <div class="login_search_id" style="margin: auto; margin-top: 5%; font-size: larger">
                            <a href="<%=contextPath %>/findIdForm.me">���̵� ã��</a>
                        </div>
                        <div class="login_search_center" style="margin: auto; margin-top: 5%; font-size: larger;">
                            |
                        </div>
                        <div class="login_search_pwd" style="margin: auto; margin-top: 5%; font-size: larger">
                            <a href="<%=contextPath %>/findPwdForm.me">��й�ȣ ã��</a>
                        </div>
                    </div>
                    <hr>

                </div> 

                <!-- �α��� �ٵ� ��-->

                <!-- �α��� ǲ�� -->
                <div class="login_footer" style="font-size: larger;">
                    ���� MZymȸ���� �ƴϽö��, ���� ������ �̿��� ������!
                    <br><br>
                    <button class="btn">ȸ������</button>
                </div>
                <!-- �α��� ǲ�� ��-->
            </div>
        </section>

        <script>
            
            // ȸ�� Ʈ���̳� ���� ��ũ��Ʈ - ������
            $(document).ready(function() {
                // �ʱ� ���� ����
                $('.login_select_user h5').css({'color':'black', 'font-weight':'bold'});
                $('.login_select_trainer h5').css({'color':'gray', 'font-weight':'normal'});
                $('#select_user').val("Y")
                // ȸ�� �α��� Ŭ�� ��
                $('#selectUser').click(function() {
                    $('.login_select_user h5').css({'color':'black', 'font-weight':'bold'});
                    $('.login_select_trainer h5').css({'color':'gray', 'font-weight':'normal'});
                    $('#select_user').val("Y")
                   // $('form').attr('action', ); // ȸ�� �α��� form�� action ����
                });
        
                // Ʈ���̳� �α��� Ŭ�� ��
                $('#selectTrainer').click(function() {
                    $('.login_select_user h5').css({'color':'gray', 'font-weight':'normal'});
                    $('.login_select_trainer h5').css({'color':'black', 'font-weight':'bold'});
                    $('#select_user').val("T")
                });
            });
            // input ��й�ȣ text ��� ��ũ��Ʈ - ������
            // �̹��� ��ư�� Ŭ������ �� ����Ǵ� �Լ�
            document.getElementById('showPasswordBtn').addEventListener('click', function(event) {
		        event.preventDefault();
		        var passwordInput = document.getElementById('passwordInput');
		        var currentType = passwordInput.getAttribute('type');
		        passwordInput.setAttribute('type', currentType === 'password' ? 'text' : 'password');
		    });
		
		    document.getElementById('passwordInput').addEventListener('keypress', function(event) {
		        if (event.keyCode === 13) {
		            event.preventDefault();
		            document.getElementById('login_form').submit();
		        }
		    });
        </script>
    </div>

</body>
</html>