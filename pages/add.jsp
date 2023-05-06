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
           String new_name=request.getParameter("name");
		   String new_star=request.getParameter("star");
		   String new_text=request.getParameter("text");
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
		   
		   new_text=new_text.replace("\n","<br>");
		   
		   
//Step 4: 執行 SQL 指令	
           sql="INSERT board_d1 (`name`, `star`, `textarea`) ";
           sql+="VALUES ('" + new_name + "', ";
           sql+="'"+new_star+"', ";
           sql+="'"+new_text+"')"; 

           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("Dark1.jsp?page=1");
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
