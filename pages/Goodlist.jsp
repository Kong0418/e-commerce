<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Goods List</title>
    <style>
        @import url("../assets/Css/title.css");
        @import url("../assets/Css/Goodlist.css");
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

</article>
<article>
    <center><h2>商品列表</h2></center>
    <div class="main">
        <div class="row">
          <div class="column">
            <div class="content">
              <img src="../assets/Images/Dark.jpg" style="width:100%">
              <a href="../pages/Dark.jsp"><h3>黑巧克力</h3></a>
            </div>
          </div>
          <div class="column">
            <div class="content">
              <img src="../assets/Images/White.jpg" style="width:100%">
              <a href="../pages/White.jsp"><h3>白巧克力</h3></a>
            </div>
          </div>
          
          <div class="column">
            <div class="content">
                <img src="../assets/Images/Nama.jpg" style="width:100%">
                <a href="../pages/Nama.jsp"><h3>生巧克力</h3></a>
            </div>
          </div>
          <div class="column">
            <div class="content">
              <img src="../assets/Images/Other.jpg" style="width:100%">
              <a href="../pages/Others.jsp"><h3>其他巧克力</h3></a>
            </div>
          </div>
        </div>
    </div>
</article>


</body>
</html>