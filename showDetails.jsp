<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css" > 
<title>Car Portal</title>
<link rel="website icon" type="png" href="./Logo1.png">
</head>
<body>
<nav>
        <img src="./logo.ico" alt="logo" />
        </nav>
        
   
    
    <h1 class="Car-Details" id="carD">Car Deatils</h1>
<div>
<%@ page import="java.sql.*" %>

    <section class="center carDetailsSection">
<%
String id= request.getParameter("h1");
  

System.out.println(id);

int i=Integer.parseInt(id);
System.out.println(i);
String password = "Sharath1@";
try {
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cardata","root",password);
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT * FROM cardata.cardetails where idcardetails="+i+";");
	while (rs.next()){
		out.println("<img class='mainCar' src='"+rs.getString(2)+"' />");
	out.println("<div class='details'>");
	    out.println("<div class='detailsRow center'>");
	        out.println("<div>");
	            out.println("<h1 class='.title2{'>"+rs.getString(3)+"</h1>");
	        out.println("</div>");
	       
	    out.println("</div>");
	    
	    out.println("<div class='detailsRow featureRow center'>");
	        out.println("<ul class='featureCard center'>");
	            out.println("<li><img src='./kilometer-driven.png' alt='kilometer-driven'/></li>");
	            out.println("<li>"+rs.getString(4)+"</li>");
	            out.println("<li>Driven</li>");
	        out.println("</ul>");
	        out.println("<ul class='featureCard center'>");
	        out.println("<li><img src='./seating.svg' alt='seating'/></li>");
	            out.println("<li>Seating</li>");
	            out.println("<li>"+rs.getString(6)+"</li>");
	        out.println("</ul>");
	        out.println("<br>");
	        out.println("<ul class='featureCard center'>");
	            out.println("<li><img src='./engine.svg' alt='engine'/></li>");
	            out.println("<li>Engine</li>");
	            out.println("<li>"+rs.getString(5)+"</li>");
	        out.println("</ul>");
	        out.println("<br>");
	        out.println("<ul class='featureCard center'>");
	            out.println("<li><img src='./speed-meter.png' alt='mileage'/></li>");
	            out.println("<li>Mileage</li>");
	            out.println("<li>"+rs.getString(7)+"</li>");
	        out.println("</ul>");
	        out.println("<br>");
	        out.println("<ul class='featureCard center'>");
	            out.println("<li><img src='./car-age.png' alt='age'/></li>");
	            out.println("<li>"+rs.getString(8)+"</li>");
	            out.println("<li>years</li>");
	        out.println("</ul>");
	        out.println("<br>");
	        out.println("<ul class='featureCard center'>");
	            out.println("<li><img src='./car-price.png' alt='price'/></li>");
	            out.println("<li>rupees</li>");
	            out.println("<li>"+rs.getString(9)+"</li>");
	        out.println("</ul>");
	        out.println("<ul class='featureCard center'>");
	            out.println("<li><img src='./ownership.png' alt='owner'/></li>");
	            out.println("<li>"+rs.getString(11)+"</li>");
	            out.println("<li>Owner</li>");
	        out.println("</ul>");
	        out.println("<ul class='featureCard center'>");
	            out.println("<li><img src='./petrol.png' alt='fuel-type'/></li>");
	            out.println("<li>"+rs.getString(12)+"</li>");
	            out.println("<li>variant</li>");
	        out.println("</ul>");
	        out.println("<ul class='featureCard center'>");
	            out.println("<li><img src='./car-transmission.png' alt='transmission'/></li>");
	            out.println("<li>"+rs.getString(10)+"</li>");
	            out.println("<li>Transmission</li>");
	        out.println("</ul>");
	    out.println("</div>");
	    out.println("<br>");
	    out.println("<button type='submit' class='actionBtn2' onclick='selectCar()'>Buy Now</button>");
	    out.println("</div>");
	            }
	
}catch(Exception e){
	System.out.println(e);
}

%>

    
    </section>
    
</div>

  <div class = "congrats" id ="congrats">
  <img src="./yesicon.png" alt="congrats"/>
  <h2>Thanks For Buying Drive Safe ..... Enjoy Ride</h2>
  
  
  </div> 
   
   <script type="text/javascript">
  
   let popup= document.getElementById("congrats");
   function selectCar(){
	   <%
	  
	   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cardata","root",password);
	   Statement stmt1 = con.createStatement();
		int num = stmt1.executeUpdate("DELETE  FROM cardata.cardetails where idcardetails="+i+";");
	   if(num>0)
	   %>
   	   popup.classList.add("open-congrats");
	   <%%>
	   
	   
	   }
   
   
   
   </script>
</body>
</html>
 