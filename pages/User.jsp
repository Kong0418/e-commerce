<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User</title>
    <style>
        @import url("../assets/Css/back.css");
		@import url("../assets/Css/title.css");
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
							sql="select * from `member`";
							PreparedStatement pstmt = con.prepareStatement(sql);
							ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
							rs.last();
							int totalNo=rs.getRow();
							
							sql="select * from `member` where `account` = '" + session.getAttribute("acc")+"';";
							rs=con.createStatement().executeQuery(sql);
							rs.next();
							
							if (session.getAttribute("acc")==null){
								response.sendRedirect("Login.jsp");
							}
							else {
								
								
	%>			
    <center><p>會員資料<a href='../index.jsp'>回到首頁</a></p></center>
    <fieldset>
        <legend>會員資料</legend>
            <table>
                <tr>
                    <td>姓名：</td>
                    <td><%=rs.getString(1)%></td>
                </tr>
                <tr>
                    <td>電話：</td>
                    <td><%=rs.getString(2)%></td>
                </tr>
                <tr>
                    <td>Email：</td>
                    <td><%=rs.getString(3)%></td>
                </tr>
                <tr>
                    <td>帳號：</td>
                    <td><%=rs.getString(4)%></td>
                </tr>
				<tr>
                    <td><form action="Logout.jsp" method="post"><input type="submit" value="登出"></form></td>
                </tr>
            </table>
    </fieldset>

    <fieldset>
	<%
						con.createStatement().execute(sql);
						sql="SELECT * FROM `purchase` WHERE `customer`='" +rs.getString(1)+ "'";
						ResultSet rs2=con.createStatement().executeQuery(sql);
						while(rs2.next()){
%>						
        
		<legend>購物紀錄</legend>
		<form action="order.jsp" method="post">
            <table>
                <tr>
                    <td>商品名稱：</td>
                    <td><%=rs2.getString(5)%></td>

                </tr>
                <tr>
                    <td>數量：</td>
                    <td><%=rs2.getString(7)%></td>
                </tr>
                <tr>
                    <td>總價：</td>
                    <td><%=rs2.getString(6)%></td>
                </tr>
            </table>
			</form>
			<%}%>
    </fieldset>
		<%					}
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
	</article>

</body>
</html>