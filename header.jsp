<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<nav>
        <img src="./logo.ico" alt="logo" />
        <ul class="ulForNav center">
            <a href="http://localhost:8080/CarPortalProject/home.jsp">
                <li class="navLink active">Home</li>
                </a>
                <a href="#TopBrands" >
                    <li class="navLink">Top Brands</li>
                </a>
                <a href="#About" >
                    <li class="navLink">About</li>
                </a>
                <a href="#Contact">
                    <li class="navLink">Contact</li>
                </a>
        </ul>
    </nav>
    <br>
    <br>
    <br>
    <br>
    <div class="heroSection center">
        <div class="heroSectionText">
            <h1 class="title">Easy and Fast Way To Buy And Sell Car On Our Paltform</h1>
            <p class="subTitle">We Will Help You To Buy Your Dream Car </p>
            <a class="actionBtn" href="#buyCar">Buy Car</a>
            <a class="actionBtn" href="http://localhost:8080/CarPortalProject/sellcar.html">Sell Car</a>
        </div>
        <img class="heroSectionImage" src="./car8 2 (1).png" alt="car image" />
    </div>
    <br>
    <br>
    <br>
    <br>
    <h1 class="title brandTitle" id="TopBrands">Top Brands</h1>
    <br>
    <br>
    
    <div class="brandSection center">
        <img class="brands" src="./BMW.png" alt="images" />
        <img class="brands" src="./toyota.png" alt="images" />
        <img class="brands" src="./nissan.png" alt="images" />
        <img class="brands" src="./lamborgjini.png" alt="images" />
        <img class="brands" src="./jaguar.png" alt="images" />
        <img class="brands" src="./ford.png" alt="images" />
    </div>
    <br>
    <br>
    <br>
    <h1 class="title brandTitle" id="buyCar">Available Cars For Sale</h1>
  <div class="cardFrame center">
  
  <%@ page import="java.sql.*" %>
  
  <form class="cardFrame center" method="post" action='showDetails.jsp'>
	<%
String password = "Sharath1@";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cardata","root",password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from cardetails");
		
		while(rs.next())
			{
			out.println("<div class='card'>");
			out.println(" <img src='"+rs.getString(2)+"'alt=''/>");
			out.println("<h3>"+rs.getString(3)+"</h3>");
			out.println("<p>"+rs.getString(9)+"</p>");
			
			out.println("<jsp:include page='showDetails.jsp' >");
			out.println("<button type='submit' class='card-btn' id="+rs.getInt(1)+" onclick='optionchoosed(this.id)'>Know More</button>");
			
			out.println("<input type='hidden' id='h1' name='h1'/>");
			
			out.println("</div>");
			}
		out.println("");
		con.close();
	}
	catch(Exception e) {
		System.out.println(e);
	}
	%>
	</form> 
       <script type="text/javascript">
       function optionchoosed(id)
       {
    	  var CarId = document.getElementById(id).id;
    	 document.getElementById('h1').value=CarId;
    	  
    	
       }
       </script>
   
    </div>   
    	
  
</body>
</html>