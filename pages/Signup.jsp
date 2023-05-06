<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <style>
        @import url("../assets/Css/title.css");
        @import url("../assets/Css/Signup.css");
    </style>
</head>
<body>
    <header style="color: white;">
      <a href="../index.jsp"><img class="head" src="../assets/Images/header.png" width="150" height="65"></a>
    </header>
    <nav>
        <a href="User.jsp"><img class="logincart" src="../assets/Images/login.png" height="30" width="30"></a>
        <a href="Cart.jsp"><img class="logincart" src="../assets/Images/shopping-cart.png" height="30" width="30"></a>
        <div class="right"><a href="Us.jsp">關於我們</a></div>
        <div class="right"><a href="Infor.jsp">相關資訊</a></div>
        <div class="right"><a href="Goodlist.jsp">商品列表</a></div>
        <div class="right"><a href="../index.jsp">首頁</a></div>       
    </nav>

    <article>
      <br/>
      <center><h3>註冊會員</h3></center>
      <center>
        <form action="SignupCheck.jsp" method="post">
          <table>
            <tr>
                <td>姓名：</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>手機：</td>
                <td><input type="text" name="phone"></td>
            </tr>
            <tr>
                <td>Email：</td>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <td>帳號：</td>
                <td><input type="text" name="acc"></td>
            </tr>
            <tr>
                <td>密碼：</td>
                <td><input type="password" name="pwd"></td>
            </tr>
            <tr>
              <td colspan="2"><input class="btn" type="submit" value="註冊">&nbsp;<input class="btn" type="reset" value="重填"></td>
            </tr>
            <tr>
              <td colspan="2" style="font-size: 15px;">送出即同意我們<font color="#1481FF">《服務條款》</font>及<font color="#1481FF">《資料保護條款》</font>。</td>
            </tr>
            <tr>
              <td colspan="2">
                <div class="signup">
                    已有帳戶？由此
                    <a href="Login.jsp"><font style="color: red;">登入</font></a></div>
                </div>
              </td>
            </tr>
          </table>
        </form></center>
      <br/>
    </article>

    <!--Footer-->
    <footer><center>©版權所有</center></footer>
</body>
</html>