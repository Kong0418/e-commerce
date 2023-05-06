<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
        @import url("../assets/Css/title.css");
        @import url("../assets/Css/Us.css");
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

    <!--關於我們-->
    <article>
    </br>
    <center><h2>關於我們</h2></center>
        <center>
          <table>
            <tr>
              <td class="pic"><img src="../assets/Images/member103.jpg" width="270" height="360"></td>
              <td class="pic"><img src="../assets/Images/member119.jpg" width="270" height="360"></td>
            </tr>
            <tr>
              <td>資管二甲 10844103</td>
              <td>資管二甲 10844119</td>
            </tr>
            <tr>
              <td>姓名：吳郁儒</td>
              <td>姓名：王韻禎</td>
            </tr>
            <tr>
              <td>喜歡的食物：巧克力</td>
              <td>喜歡的食物：蛋類料理、奶酪</td>
            </tr>
            <tr>
              <td>討厭的食物：茄子、南瓜</td>
              <td>討厭的食物：肉、酸菜</td>
            </tr>
            <tr>
              <td>
                <a href="https://www.facebook.com/profile.php?id=100003593002312" target="_blank"><img src="../assets/Images/facebook.png" width="50" height="50"></a>
                <a href="https://www.instagram.com/_kong_0418/" target="_blank"><img src="../assets/Images/Instagram.png" width="50" height="50"></a>
                <a href="mailto:10535063@ms2.hssh.tp.edu.tw" target="_blank"><img src="../assets/Images/email.png" width="50" height="50"></a>
              </td>
              <td>
                <a href="https://www.facebook.com/profile.php?id=100003668352660" target="_blank"><img src="../assets/Images/facebook.png" width="50" height="50"></a>
                <a href="https://www.instagram.com/wyyyz_0010/" target="_blank"><img src="../assets/Images/Instagram.png" width="50" height="50"></a>
                <a href="mailto:s96570517@gmail.com" target="_blank"><img src="../assets/Images/email.png" width="50" height="50"></a>
              </td>
            </tr>
          </table>
        </center>
    </article>
<br/><br/>

</body>
</html>