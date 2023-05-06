<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>back</title>
    <style>
        @import url("../assets/Css/back.css");
    </style>
</head>
<body>
    <center><p>後台管理<br><a href='../index.jsp'>回到首頁</a></p></center>
    <fieldset>
        <legend>新增商品</legend>
        <form action="back_add.jsp" method="POST">
            <table>
               <tr>
                    <td>商品編號：</td>
                    <td><input type="text" name="id"></td>
                </tr>
				<tr>
                    <td>商品名稱：</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>庫存：</td>
                    <td><input type="text" name="stock"></td>
                </tr>
                <tr>
                    <td>單價：</td>
                    <td><input type="text" name="price"></td>
                </tr>
				<tr>
                    <td>商品類型：</td>
                    <td><input type="text" name="Types"></td>
                </tr>
            </table>
            <input type="submit" value="新增">
        </form>
    </fieldset>
    <fieldset>
        <legend>修改商品</legend>
        <form action="back_update.jsp" method="POST">
            <table>
                <tr>
                    <td>商品編號：</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>修改後名稱：</td>
                    <td><input type="text" name="new_name"></td>
                </tr>
                <tr>
                    <td>庫存：</td>
                    <td><input type="text" name="stock"></td>
                </tr>
                <tr>
                    <td>單價：</td>
                    <td><input type="text" name="price"></td>
                </tr>
            </table>
            <input type="submit" value="修改">
        </form>
    </fieldset>
    <fieldset>
        <legend>刪除商品</legend>
        <form action="back_delete.jsp" method="POST">
            <table>
                <tr>
                    <td>商品名稱：</td>
                    <td><input type="text" name="name"></td>
                </tr>
            </table>
            <input type="submit" value="刪除">
        </form>
    </fieldset>
	
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
							sql="select * from `purchase`";
							PreparedStatement pstmt = con.prepareStatement(sql);
							ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
							while(rs.next()){
							%>
	
	<fieldset>
        <legend>瀏覽訂單</legend>
            <table>
                <tr>
                    <td>商品名稱：</td>
                    <td><input type="text" name="product" value="<%=rs.getString(5)%>"></td>
                </tr>
				<tr>
                    <td>數量：</td>
                    <td><input type="text" name="count" value="<%=rs.getString(7)%>"></td>
                </tr>
				<tr>
                    <td>總價：</td>
                    <td><input type="text" name="amount" value="<%=rs.getString(6)%>"></td>
                </tr>
				<tr>
                    <td>購買人姓名：</td>
                    <td><input type="text" name="name" value="<%=rs.getString(2)%>"></td>
                </tr>
				<tr>
                    <td>購買人電話：</td>
                    <td><input type="text" name="phone" value="<%=rs.getString(3)%>"></td>
                </tr>
				<tr>
                    <td>購買人地址：</td>
                    <td><input type="text" name="address" value="<%=rs.getString(4)%>"></td>
                </tr>
            </table>
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
</body>
</html>