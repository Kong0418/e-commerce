<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        @import url("../assets/Css/title.css");
        @import url("../assets/Css/Login.css");
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

    <article >
      <br/>
      <center><h3>會員登入</h3></center>
      <center>
        <form action="LoginCheck.jsp" method="post">
          <table>
            <tr>
              <td>帳號：</td>
              <td><input class="tex" type="text" name="acc"></td>
            </tr>
            <tr>
              <td>密碼：</td>
              <td><input class="tex" type="password" name="pwd"></td>
            </tr>
            <tr>
              <td colspan="2"><input class="btn" type="submit" value="登入"></td>
            </tr>
            <tr>
              <td colspan="2">
                <div class="login">
                  還沒有帳戶？由此
                  <a href="Signup.jsp"><font style="color: red;">註冊</font></a>
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