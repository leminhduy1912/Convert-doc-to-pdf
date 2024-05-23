<%@page import="com.example.ltm.bean.Account"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>register</title>
    <script>
	function checkInput() {
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		if (username == "" || password == "") {
			alert("Mời nhập đủ thông tin!");
			return false;
		}
		<%
		List<Account> accounts = (List<Account>)request.getAttribute("accounts");
        for(Account a : accounts){
        	%>
        	if(username== "<%=a.getUsername() %>") {
        		alert("Username đã tồn tài! Mời nhập username khác");
        	}
        	<%
        }
		%>
	}
</script>
  </head>
  <body>
  <header>
    <div class="navbar">
      <a href="">Home</a>

      <a href="<%= request.getContextPath() %>/OptionalServlet?index=0" class="login-btn">Sign In </a>
    </div>
  </header>
    <main>
      <div class="jumbotron">
        <div class="content-page">
          <div class="content-page">

            <h1>Convert PDF to Word tool!</h1>
            <p>
              Convert your PDF to Word effortlessly. First, log in and click 'choose file' to upload your PDF. Then, our software will automatically convert the PDF to Word. Finally, you can download the converted file. With our tool, converting PDF to Word online and for free is incredibly easy. Try it now on this site.
            </p>
            <p><a class="btn btn-primary" href="#" role="button">Learn more &raquo;</a></p>

          </div>
        </div>
      </div>
      <div class="container">
        <h1>Register</h1>
        <form
          action="<%=request.getContextPath()%>/RegisterServlet"
          method="POST"
          name="form1"
        >

          <input type="text" name="username" placeholder="Enter username" id="username" /> <br />

          <input type="password" name="password" placeholder="Enter password" id="password" />
          <br />
          <input type="submit" value="Register" onClick="checkInput()" />

          <br />
          <a
            class="register"
            href="<%= request.getContextPath()%>/OptionalServlet?index=0"
            >Login</a
          >
        </form>
      </div>
    </main>
    <footer class="footer-wrap">
      <div>
        <h2 class="title">ABOUT US</h2>
        <p>Đại học Bách Khoa Đà Nẵng:</p>
        <div class="list-tags">
          <a href="" class="tag">Lê Minh Duy</a>
          <a href="" class="tag">Nguyễn Đức Dũng</a>
          <a href="" class="tag">Trần Tấn Thành</a>
        </div>
        <p>Lập trình mạng thầy tuấn 21Nh16</p>
      </div>

    </footer>
  </body>
  <style>
    body {
      margin: 0;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
        "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
        "Segoe UI Emoji", "Segoe UI Symbol";
      font-size: 1rem;
      font-weight: 400;
      line-height: 1.5;
      color: #212529;
      text-align: left;
      background-color: #fff;
    }
    main {
      color: #253e63;
      display: inline-flex;
      flex-direction: row;
      width: 90%;
      margin-left: 5%;
      height: 650px;
    }

    /* Style for the navigation bar */
    .navbar {
      background-color: #3498DB;
      overflow: hidden;
      width: 100%;
    }

    .navbar a {
      font-size: 20px;
      float: left;
      display: block;
      color: #ffffff;
      text-align: center;
      padding: 16px 30px 16px;
      text-decoration: none;
    }

    .navbar .login-btn {
      float: right;
    }

    a:hover {
      background-color: #42474d;
    }

    /*style for main */
    .jumbotron {
      padding: 2rem 1rem;
      margin-bottom: 1rem;
      margin-top: 1rem;
      background-color: #e9ecef;
      border-radius: 0.3rem;
      width: 70%;
      font-size: 20px;
      justify-content: center;
    }

    .jumbotron .content-page .display-3 {
      font-size: 4.5rem;
      font-weight: 300;
      line-height: 1.2;
    }
    .jumbotron .content-page p {
      width: 90%;
    }
    .jumbotron .content-page a {
      text-decoration: none;
      padding: 10px;
      border-radius: 7%;
      display: block;
      color: #253e63;
      border: 1px solid;
      width: 130px;
    }
    .jumbotron .content-page a:hover {
      color: white;
      background-color: #37475f;
    }

    main .container {
      font-family: Arial, Helvetica, sans-serif;
      display: flex;
      flex-direction: column;
      border-radius: 4px;
      padding: 20px 20px 0px 20px;
      box-shadow: #4d4f52 0px 1px 2px 0px, #333435 0px 1px 3px 1px;
      text-align: center;
      width: 30%;
      margin: 1rem;
      font-size: 20px;
    }

    main .container input {
      width: 70%;
      height: 25px;
      border: 1px solid #253e63;
      border-radius: 3px;
      padding: 8px;
      margin: 20px 0px 20px 30px;
    }

    main .container input[type="submit"],
    main .container input[type="reset"] {
      color: #ffffff;
      background-color: #3498DB;
      font-size: 20px;
      border-color: #3498DB;
      border-radius: 20px;
      width: 70%;
      margin: 15px 15px 15px 15px;
      cursor: pointer;
      height: 40px;
    }

    main .container input[type="submit"]:hover,
    main .container input[type="reset"]:hover {
      background-color: #848688;
      color: white;
      box-shadow: #848688 0px 1px 2px 0px, #848688 0px 1px 3px 1px;
    }

    /* main .container input {*/
    /*  width: 50%;*/
    /*  height: 25px;*/
    /*  border: 1px solid #253e63;*/
    /*  border-radius: 3px;*/
    /*  padding: 4px;*/
    /*  margin: 30px 0px 30px 40px;*/
    /*}*/
    /*main .container input[type="submit"],*/
    /*main .container input[type="reset"] {*/
    /*  color: #1a2638;*/
    /*  width: 40%;*/
    /*  margin: 15px 15px 15px 15px;*/
    /*  cursor: pointer;*/
    /*  height: 30px;*/
    /*}*/
    /*main .container input[type="submit"]:hover,*/
    /*main .container input[type="reset"]:hover {*/
    /*  background-color: #848688;*/
    /*  color: white;*/
    /*  box-shadow: #848688 0px 1px 2px 0px, #848688 0px 1px 3px 1px;*/
    /*}*/
    main .container .register {
      text-decoration: none;
      padding: 4px;
      border-radius: 20px;
      display: block;
      color: #253e63;
      border: 1px solid;
      width: 150px;
      height: 30px;
      margin-top: 20px;
      margin-left: auto;
      margin-right: auto;
    }
    main .container .register:hover,
    main .container a:hover {
      background-color: #848688;
      color: white;
      box-shadow: #848688 0px 1px 2px 0px, #848688 0px 1px 3px 1px;
    }

    /*style for footer */
    .footer-wrap {
      padding: 2rem 1rem;
      background-color: #3498DB;
      color: #fff;
      text-align: center;
    }

    .footer-wrap .title {
      font-size: 1.25rem;
      margin-bottom: 0.5rem;
      color: #fff;
    }

    .footer-wrap .list-tags {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      margin-bottom: 1rem;
    }

    .footer-wrap .tag {
      border: 1px solid #fff;
      color: #fff;
      text-decoration: none;
      padding: 0.25rem 0.5rem;
      margin: 0.25rem;
      transition: 0.3s;
    }

    .footer-wrap .tag:hover {
      background-color: #fff;
      color: #3498DB;
    }
    .btn-primary {
      color: #fff;
      background-color: #007bff;

      text-underline: #ffffff;
    }

    .btn-primary:hover {
      color: #fff;
      background-color: #0069d9;
      border-color: #0062cc;
    }
    .footer-content {
      width: 95%;
      margin: 0 auto;
      display: flex;
      color: #fff;

      @media (max-width: 992px) {
        width: 95%;
      }

      @media (max-width: 750px) {
        width: 95%;
        display: block;
      }
    }

    .item {
      width: 35%;
      margin: 0 15px 20px;
    }
    .item p {
      margin: 0;
      font-size: 20px;
    }



    .list-tags {
      display: flex;
      flex-wrap: wrap;
    }

    .list-tags .tag {
      border: 1px solid #fff;
      color: #fff;
      text-decoration: none;
      font-size: 20px;
      padding: 2px 7px;
      margin: 0 10px 10px 0;
      transition: 0.6s all linear;
    }

    .subcribe-info {
      padding: 0 15px 25px;
      background-color: #545b62;
      color: #fff;
      text-align: center;
    }

    .subcribe-info p {
      margin-bottom: 24px;
    }

    footer input {
      display: block;
      padding: 5px 10px;
      margin: 0 auto;
      border-radius: 3px;
      transition: all 0.5s ease-in-out;
      border: 1px solid transparent;
      margin-bottom: 24px;
      background-color: transparent;
      color: #fff;
    }

    .btn-subcribe {
      cursor: pointer;
      background-color: #ececec;
      padding: 10px 25px;
      color: #000;
      font-size: 12px;
      line-height: 1.5;
      text-align: center;
      border: 0;
      outline: 0;
      font-weight: 400;
      letter-spacing: 1px;
    }

    .copyright {
      height: 50px;
      text-align: center;
      padding: 20px 0;
    }

    .copyright a {
      font-size: 20px;
      color: #d3b062;
      text-decoration: none;
    }
  </style>
</html>
