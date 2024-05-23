<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Trang chủ</title>
  <style>
    body {
      margin: 0;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
      font-size: 1rem;
      font-weight: 400;
      line-height: 1.5;
      color: #212529;
      background-color: #f8f9fa;
    }

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

    main {
      padding: 2rem 5%;
    }

    .jumbotron {
      padding: 2rem 1rem;
      background-color: #e9ecef;
      border-radius: 0.3rem;
      margin-bottom: 2rem;
    }

    .jumbotron h1 {
      font-size: 2.5rem;
      font-weight: 300;
    }

    .btn {
      display: inline-block;
      font-weight: 400;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      user-select: none;
      border: 1px solid transparent;
      padding: 0.5rem 1rem;
      font-size: 1.25rem;
      line-height: 1.5;
      border-radius: 0.3rem;
      transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    }

    .btn-primary {
      color: #fff;
      background-color: #007bff;
      border-color: #007bff;
    }

    .btn-primary:hover {
      color: #fff;
      background-color: #0069d9;
      border-color: #0062cc;
    }

    .row {
      display: flex;
      flex-wrap: wrap;
      margin: 0 -15px;
    }

    .col-md-4 {
      flex: 0 0 33.3333%;
      max-width: 33.3333%;
      padding: 15px;
    }

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
  </style>
</head>
<body>
    <header>
      <div class="navbar">
        <a href="">Home</a>

        <a href="<%= request.getContextPath() %>/OptionalServlet?index=0" class="login-btn">Sign In </a>
      </div>
    </header>
<main role="main">
  <div class="jumbotron">
    <div class="container">
      <h1>Convert PDF to Word tool!</h1>
      <p>
        Convert your PDF to Word effortlessly. First, log in and click 'choose file' to upload your PDF. Then, our software will automatically convert the PDF to Word. Finally, you can download the converted file. With our tool, converting PDF to Word online and for free is incredibly easy. Try it now on this site.
      </p>
      <p><a class="btn btn-primary" href="#" role="button">Learn more &raquo;</a></p>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <h2>Secure!</h2>
        <p>We keep your files safe! All files you upload and convert from PDF to Word are stored in your account database. Please read our privacy policy for more details.</p>
      </div>
      <div class="col-md-4">
        <h2>Fast and Convenient</h2>
        <p>Convert PDF to Word in an instant. The way to convert PDF to Word online and for free is really easy with our tool. You can try it right here on this page.</p>
      </div>
      <div class="col-md-4">
        <h2>Windows, Mac, and Linux</h2>
        <p>Our software to convert PDF to Word works in the web browser. Therefore, it works with all operating systems.</p>
      </div>
    </div>
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
</html>
