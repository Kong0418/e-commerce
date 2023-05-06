<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<html>
<head>
<title>backcart</title>
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
           sql="use `final`";
           con.createStatement().execute(sql);
		   String product=new String(request.getParameter("product").getBytes("ISO-8859-1"),"UTF-8");
		   String price=request.getParameter("price");
		   String count=request.getParameter("count");
           String amount=Integer.toString(Integer.parseInt(price)*Integer.parseInt(count));
		   String src=new String(request.getParameter("src").getBytes("ISO-8859-1"),"UTF-8");
		   
		   String stock2=request.getParameter("stock2");
		   String stock=Integer.toString(Integer.parseInt(stock2)-Integer.parseInt(count));		  


//Step 4: 執行 SQL 指令	
           sql="INSERT `cart` (`product`,`price`, `count`,`amount`,`src`) ";
		   sql+="VALUES ('" +product+ "', ";
		   sql+="'"+price+"', ";
           sql+="'"+count+"', ";
           sql+="'"+amount+"', ";   
           sql+="'"+src+"')";		
			con.createStatement().execute(sql);
		   //out.print(stock);
           sql="UPDATE `product_dark` SET `stock`='"+stock +"' WHERE `name`='"+product+"'";
		   con.createStatement().execute(sql);
				   

           
		   
		   
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("Cart.jsp");
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
