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
<html lang="en">
<head>
    <title>Login</title>
</head>
<body>
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
						
						String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
						String phone=request.getParameter("phone");
						String email=request.getParameter("email");
						String acc=request.getParameter("acc");
						String pwd=request.getParameter("pwd");
		   
						sql = "SELECT * FROM `member` WHERE `account`='" +acc+ "'"  ; 
						PreparedStatement ps = con.prepareStatement(sql);
						ResultSet rs=ps.executeQuery();
						if(rs.next()){   
	%>
						<center><h3>用戶已存在，請<a href="Signup.jsp"><font style="color: red;">重新註冊</font></a></h3></center>
	<%
						}
						else{
						sql = "INSERT INTO `member`(name,phone,email,account,password) " + "values(?,?,?,?,?)";
						PreparedStatement tmt = con.prepareStatement(sql);
						tmt.setString(1, name);
						tmt.setString(2, phone);
						tmt.setString(3, email);
						tmt.setString(4, acc);
						tmt.setString(5, pwd);
						tmt.executeUpdate();
						con.close();
						response.sendRedirect("NewMember.jsp") ;
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
	<!--Footer-->
    <footer><center>©版權所有</center></footer>
</body>
</html>
</body>
</html>