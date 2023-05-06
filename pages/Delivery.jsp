<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delivery</title>
    <style>
        @import url("../assets/Css/title.css");
        @import url("../assets/Css/Delivery.css");
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
					Connection con=DriverManager.getConnection(url,"root", "1234");
					if(con.isClosed())
						out.println("連線建立失敗");
					else {
					//Step 3: 選擇資料庫   
						sql="USE `final`";
						con.createStatement().execute(sql);
						sql="SELECT * FROM `cart`";
						ResultSet rs=con.createStatement().executeQuery(sql);
						while(rs.next()){
%>
    <article>
        <center><h2>訂單明細</h2></center>
        <div id="app">
            <div class="container">
                <div class="item_header">
                    <div class="item_detail">商品</div>
                    <div class="price">單價</div>
                    <div class="count">數量</div> 
                    <div class="amount">總計</div>
                </div>
                <div class="item_header item_body">
                    <div class="item_detail">
                        <img src="<%=rs.getString(6)%>">
                        <div class="name"><%=rs.getString(2)%></div>
                    </div>
        
                    <div class="price"><span>$</span><%=rs.getString(3)%></div>
                    <div class="count">
                        <input id="dec" type="button" value="-">
                        <input id="count" type="text" value="<%=rs.getString(4)%>" size="1" style="text-align:center;">
                        <input id="inc" type="button" value="+">
                    </div> 
                    <div class="amount"><%=rs.getString(5)%></div>
                </div>
                <div class="item_header item_body2">
                    <center><form action="Submit.jsp" method="post">
					 
                        <h3>宅配資訊</h3>
                        <table>
                            <tr>
                                <td>姓名：</td>
                                <td><input type="text" name="name"></td>
                            </tr>
                            <tr>
                                <td>手機：</td>
                                <td><input type="text" name="phone"></td>
                            </tr>
                            <tr>
                                <td>地址：</td>
                                <td><input type="text" name="address"></td>
                            </tr>
                        </table>
                        <br/>
						<input type="hidden" name="count" value="<%=rs.getString(4)%>">
						<input type="hidden" name="product" value="<%=rs.getString(2)%>">
						<input type="hidden" name="amount" value="<%=rs.getString(5)%>">
						
						<%
						con.createStatement().execute(sql);
						sql="SELECT * FROM `product_dark`";
						ResultSet rs2=con.createStatement().executeQuery(sql);
						while(rs2.next()){
%>
<input type="hidden" name="stock" value="<%=rs2.getString(6)%>"><%}%>
						
						
						<input type="submit" value="送出訂單">
						<input type="hidden" name="id" value="<%=rs.getString(1)%>">
                    </form>
					
					<br/>
                </div>
            </div>
            <br/>
        </div>
	
    </article>
    <br/><br/>
    <script>
         window.onload = function() {
            var count = document.getElementById("count");
            var inc = document.getElementById("inc");
            var dec = document.getElementById("dec");
            inc.onclick = function() {
                count.value = parseInt(count.value) + 1;
            };
            dec.onclick = function() {
                count.value = parseInt(count.value) - 1;
            };
        };
    </script>
	
<%						}
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

</body>
</html>