<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>add</title>
</head>
<body>
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
           sql="use final";
           con.createStatement().execute(sql);
		   request.setCharacterEncoding("UTF-8");
		   
		   String id=request.getParameter("id");
		   String name=request.getParameter("name");
		   String price=request.getParameter("price");
		   String stock=request.getParameter("stock");
		   String Types=request.getParameter("Types");
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
		   
//Step 4: 執行 SQL 指令	
		   sql = "SELECT * FROM `product_dark` WHERE `name`='" +name+ "'"  ; 
		   PreparedStatement ps = con.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   
		   sql = "insert into product_dark (`ID`, `href`, `src`, `name`, `price`, `stock`, `Types`)"+"values (?,?,?,?,?,?,?)";
		   PreparedStatement stat = con.prepareStatement(sql);
		   stat.setString(1, id);
		   stat.setString(2, "../pages/Good.jsp");
           stat.setString(3, "../assets/Images/Dark1.jpg");
		   stat.setString(4, name);
		   stat.setString(5, price);
		   stat.setString(6, stock);
		   stat.setString(7, Types);
           stat.executeUpdate();
		   
           //con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("back.jsp");
		   
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
