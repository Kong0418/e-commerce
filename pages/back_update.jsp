<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<html>
    <head>
        <title>JSP UPDATE</title>
    </head>
    <body>      
	   <%  		
        try {
//Step 1: 載入資料庫驅動程式 	        
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
//Step 2: 建立連線 	            
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
		        String sql="";
				if(con.isClosed())
                    out.println("連線建立失敗");
                else
                    {	
//Step 3: 選擇資料庫	                    	                   					
					sql="use `final`";
                    con.createStatement().execute(sql);
                    sql="SELECT * FROM `product_dark`";
					
                    PreparedStatement pstmt = con.prepareStatement(sql);	
					
//Step 4: 執行 SQL 指令   
                    request.setCharacterEncoding("UTF-8");   
					String id=request.getParameter("id");
					String new_name=request.getParameter("new_name");	
                    String price=request.getParameter("price");
					String stock=request.getParameter("stock");
					
					
					sql = "UPDATE `product_dark` SET `name`='"+new_name+"' WHERE `id`='"+id+"'";
					con.createStatement().execute(sql);
					sql = "UPDATE `product_dark` SET `price`='"+price+"' WHERE `id`='"+id+"'";
	                con.createStatement().execute(sql);
					sql = "UPDATE `product_dark` SET `stock`='"+stock+"' WHERE `id`='"+id+"'";
	                con.createStatement().execute(sql);
					out.println("修改成功，返回<a href='back.jsp'>後台</a>");																				

                    
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