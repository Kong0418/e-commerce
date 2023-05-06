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
	
    <%
		try {
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
						sql="select * from member";
						PreparedStatement pstmt = con.prepareStatement(sql);
						
						String acc=request.getParameter("acc");
						String pwd=request.getParameter("pwd");						                      						
                       						
						if(acc!=null && pwd!=null){
							sql = "SELECT * FROM `member` WHERE `account`='" + acc + "'  AND `password`='" + pwd + "'"  ; 
							ResultSet rs =con.createStatement().executeQuery(sql);
							if(acc.equals("Back") && pwd.equals("Back")){
								response.sendRedirect("back.jsp");
							}
							else{
								if(rs.next()){            								    
									
									session.setAttribute("acc",request.getParameter("acc"));
									con.close();
									response.sendRedirect("User.jsp") ;
								}
								else{
									con.close();
	%>
		<center><h3>密碼帳號不符 !! <a href="Login.jsp"><font style="color: blue;">按此</font></a>重新登入</h3></center></a>
	<%	
								}
							}
						}
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

    <!--Footer-->
    <footer><center>©版權所有</center></footer>
</body>
</html>