<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit</title>
    <style>
        @import url("../assets/Css/title.css");
        @import url("../assets/Css/Submit.css");
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
        <center>
            <h3>
                訂單已成功送出，請點選
                <a href="Goodlist.jsp">此處</a>
                回到商品列表
            </h3>
        </center>
    </article>

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
           sql="use `final`";
           con.createStatement().execute(sql);
           sql="SELECT * FROM `cart`";
		   String id=request.getParameter("id");
//Step 4: 執行 SQL 指令	
           sql="DELETE FROM cart WHERE id='"+id+"'";
			con.createStatement().execute(sql);

			String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
			String phone = request.getParameter("phone");
			String address = new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
			String product = new String(request.getParameter("product").getBytes("ISO-8859-1"),"UTF-8");
			String count = request.getParameter("count");
			String amount = request.getParameter("amount");
			
			sql="INSERT `purchase` ( `customer`,`phone`, `address`,`product`,`amount`,`count`) ";
		        sql+="VALUES ('" + name + "', ";
		        sql+="'"+phone+"', ";
                sql+="'"+address+"', ";
                sql+="'"+product+"', ";
				sql+="'"+amount+"', ";
                sql+="'"+count+"')";
				con.createStatement().execute(sql);
//Step 6: 關閉連線
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
</body>
</html>