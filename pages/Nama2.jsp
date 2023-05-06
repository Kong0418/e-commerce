<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nama2</title>
	
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
						sql="select * from product_nama where ID='2'";
						ResultSet rs =con.createStatement().executeQuery(sql);
						PreparedStatement pstmt = con.prepareStatement(sql);
						
						while(rs.next()){																															
	%>
    <style>
        @import url("../assets/Css/title.css");
        @import url("../assets/Css/Good.css");
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
        <center><h2><%=rs.getString(4)%></h2></center>
        <div id="app">
            <div class="container">
                <div class="item_header item_body">
                    <div class="item_detail">
                        <img src="<%=rs.getString(3)%>">
                    </div>
                    <div class="txt"><form action="back_car.jsp" method="post">
                        <div class="good"><%=rs.getString(4)%><br/><br/></div>
                        <div class="price"><%=rs.getString(5)%><br/><br/></div>
						
						<!--隱藏物件 傳回值到後端-->
						<input type="hidden" name="product" value="<%=rs.getString(4)%>">
						<input type="hidden" name="src" value="<%=rs.getString(3)%>">
						<input type="hidden" name="price" value="<%=rs.getString(5)%>">
						<input type="hidden" name="stock2" value="<%=rs.getString(6)%>">
						
                        <div>
                            <input id="dec" type="button" value="-">
                            <input id="count" type="text" value="1" size="1" style="text-align:center;" name="count">
                            <input id="inc" type="button" value="+">
                            庫存<input type="text" size="2" name="stock" value="<%=rs.getString(6)%>">
                        </div>
                        <br/>
                        <div><button>加入購物車</button></div>
						<%}
					}
				}
				catch (SQLException sExec) {
					out.println("SQL錯誤"+sExec.toString());
				}
		}
		catch (ClassNotFoundException err) {
			out.println("class錯誤"+err.toString());
		}%>
                   </form> </div>
                </div>
            </div>
            <br/>
        </div>

        <!--評論-->
        <div id="app">
            <div class="container">
                <div class="item_header item_body2">
                    <div class="item_detail2">
                        <div class="good">評論區<br/></div>
                        <hr/>
			<%
				try {
					//Step 1: 載入資料庫驅動程式 
					Class.forName("com.mysql.jdbc.Driver");
					try {
					//Step 2: 建立連線 	
						String url="jdbc:mysql://localhost/?serverTimezone=UTC";
						String sql="";
						Connection con=DriverManager.getConnection(url,"root","1234);
						if(con.isClosed())
							out.println("連線建立失敗");
						else {
						//Step 3: 選擇資料庫   
							sql="USE `final`";
							con.createStatement().execute(sql);
							sql="select * from board_n2";
							PreparedStatement pstmt = con.prepareStatement(sql);
							ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
							rs.last();
							int totalNo=rs.getRow();
							
							sql="select * from board_n2";
							rs=con.createStatement().executeQuery(sql);
							for (int i=0; i<totalNo; i++){
								rs.next();
								out.print("<div class='cus'>"+rs.getString(2));
								out.print("<img src='../assets/Images/star"+rs.getString(3)+".png' height='20' width='125'></div>");
								out.print("<div class='com'>"+rs.getString(4)+"</div><hr/>");
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
                        <!--<div class="cus">顧客 莫小姐 <img src="../assets/Images/star5.png" height="20" width="125"></div>
                        <div class="com">出貨速度快；商品品質好。</div>
                        <hr/>
                        <div class="cus">顧客 錢小姐 <img src="../assets/Images/star3.png" height="20" width="125"></div>
                        <div class="com">CP值不高。</div>
                        <hr/>
                        <div class="cus">顧客 李先生 <img src="../assets/Images/star4.png" height="20" width="125"></div>
                        <div class="com">服務品質良好。</div>
                        <hr/>-->
                    </div>
                    <div class="item_detail3">
                        <div class="good">我要評論<br/></div>
                        <hr/>
                        <form action="add.jsp">
                            <div class="com">姓名：<input type="text" name="name"></div><br/>
                            <div>
                                <select name="star">
                                    <option>請選擇星等</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div><br/>
                            <div>
                                <textarea cols="50" rows="6" wrap="hard" name="text"></textarea>
                            </div>
                            <div><input type="submit" value="送出" name="enter"></div>
                        </form>
                        <hr/>
                    </div>
                </div>
            </div>
            <br/>
        </div>
    </article>

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


</body>
</html>