<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Others</title>
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

<article>
    <center><h2>其他巧克力</h2></center>
    <div class="main">
        <div class="row">
		<%
				try {
				//Step 1: 載入資料庫驅動程式 
					Class.forName("com.mysql.jdbc.Driver");
					try {
					//Step 2: 建立連線 	
						String url="jdbc:mysql://localhost/?serverTimezone=UTC";
						String sql="";
						Connection con=DriverManager.getConnection(url,"root","1234");
						if(con.isClosed())
							out.println("連線建立失敗");
						else {
						//Step 3: 選擇資料庫   
							sql="USE `final`";
							con.createStatement().execute(sql);
							sql="select * from product_others";
							PreparedStatement pstmt = con.prepareStatement(sql);
							ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
							rs.last();
							int totalNo=rs.getRow();
							
							sql="select * from product_others";
							rs=con.createStatement().executeQuery(sql);
							for (int i=0; i<totalNo; i++){
								rs.next();
								out.print("<div class='column'><div class='content'> ");
								out.print("<img src='"+rs.getString(3)+"' style='width:100%;'>");
								out.print("<a href='"+rs.getString(2)+"'>");
								out.print("<h3>"+rs.getString(4)+"</h3></a></div></div>");
							}	
							con.close();
						}
					}
					catch (SQLException sExec) {
						out.println("SQL錯誤"+sExec.toString());
		   
					}
				}
				catch (ClassNotFoundException err) {
					out.println("class錯誤"+err.toString());
				}
			%>
          <!--<div class="column">
            <div class="content">
              <img src="../assets/Images/Other1.jpg" style="width:100%">
              <a href="../pages/Other1.html"><h3>比利時巧克力脆片</h3></a>
            </div>
          </div>
          <div class="column">
            <div class="content">
              <img src="../assets/Images/Other2.jpg" style="width:100%">
              <a href="../pages/Other2.html"><h3>巧克力杏仁脆片</h3></a>
            </div>
          </div>
          <div class="column">
            <div class="content">
              <img src="../assets/Images/Other3.jpg" style="width:100%">
              <a href="../pages/Other3.html"><h3>巧克力拉麵</h3></a>
            </div>
          </div>
          <div class="column">
            <div class="content">
                <img src="../assets/Images/Other4.jpg" style="width:100%">
                <a href="../pages/Other4.html"><h3>紅寶石巧克力</h3></a>
            </div>
          </div>-->
        </div>
    </div>
</article>


</body>
</html>