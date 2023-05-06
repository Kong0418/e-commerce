<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <style>
        @import url("assets/Css/title.css");
        @import url("assets/Css/index.css");
    </style>
</head>
<body>
    <header style="color: white;">
        <a href="index.jsp"><img class="head" src="assets/Images/header.png" width="150" height="65"></a>
    </header>
    <nav>
        <a href="pages/User.jsp"><img class="logincart" src="assets/Images/login.png" height="30" width="30"></a>
        <a href="pages/Cart.jsp"><img class="logincart" src="assets/Images/shopping-cart.png" height="30" width="30"></a>
        <div class="right"><a href="pages/Us.jsp">關於我們</a></div>
        <div class="right"><a href="pages/Infor.jsp">相關資訊</a></div>
        <div class="right"><a href="pages/Goodlist.jsp">商品列表</a></div>
        <div class="right"><a href="index.jsp">首頁</a></div>       
    </nav>
    <article>
      <marquee style="font-size: 20px;">
        <img src="assets/Images/duck.png" width="32" height="32"> 歡迎蒞臨<font style="font-family: Comic Sans MS;">CM</font>，拉近你我之間的距離
      </marquee>
    </article>
    

    <!--照片牆-->
    <article>
      <br/>
        <div class="photo">
            <div>
                <img src="assets/Images/Index5.PNG" height="576" width="1024">
            </div>
            <div>
                <img src="assets/Images/Index4.PNG" height="576" width="1024">
            </div>
            <div>
                <img src="assets/Images/Index3.PNG" height="576" width="1024">
            </div>
            <div>
                <img src="assets/Images/Index2.PNG" height="576" width="1024">
            </div>
            <div>
                <img src="assets/Images/Index1.PNG" height="576" width="1024">
            </div>
        </div>
    </br>
  </article>

    <!--熱門商品-->
    <article>
        <center><h2>熱門商品</h2></center>
        <div class="main">
            <div class="row">
              <div class="column">
                <div class="content">
                  <img src="assets/Images/Nama2.jpg" style="width:100%">
                  <a href="pages/Nama2.jsp"><h3>草莓生巧克力</h3></a>
                </div>
              </div>
              <div class="column">
                <div class="content">
                  <img src="assets/Images/Other4.jpg" style="width:100%">
                  <a href="pages/Other4.jsp"><h3>紅寶石巧克力</h3></a>
                </div>
              </div>
              <div class="column">
                <div class="content">
                  <img src="assets/Images/Dark2.jpg" style="width:100%">
                  <a href="pages/Dark2.jsp"><h3>黑巧克力蛋糕</h3></a>
                </div>
              </div>
              <div class="column">
                <div class="content">
                  <img src="assets/Images/Nama1.jpg" style="width:100%">
                  <a href="pages/Nama1.jsp"><h3>醇酒生巧克力</h3></a>
                </div>
              </div>
            </div>
        </div>
    </article>

    <!--Footer-->
	
    <footer><center>
<%
try {
//Step 1: 載入資料庫驅動程式 
  Class.forName("com.mysql.jdbc.Driver");
  try {
//Step 2: 建立連線 
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con=DriverManager.getConnection(url,"root","1234");
		String countString;
		int Count;
        if(con.isClosed())
           out.println("連線建立失敗");
        else
        {
//Step 3: 選擇資料庫	        
           String sql="USE `final`";
           con.createStatement().execute(sql);
//Step 4: 執行 SQL 指令
           sql="SELECT * FROM `counter`" ;
           ResultSet rs=con.createStatement().executeQuery(sql);
//Step 5: 顯示結果            
           if(rs.next()){
			   countString=rs.getString(1);
			   Count=Integer.parseInt(countString);
               if(session.isNew()){
				   Count=Count+1;
				   countString=String.valueOf(Count);
				   sql="UPDATE `counter` SET `Count` ="+countString;
				   con.createStatement().execute(sql);
			   }
			   out.print("瀏覽人次："+Count+"人"+"<br/>"+"©版權所有");
            }
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



%></center></footer>
</body>
</html>