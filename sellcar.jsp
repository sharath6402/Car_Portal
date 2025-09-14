<html lang="en">
<head xmlns="http://www.w3.org/1999/xhtml">
    <meta charset="UTF-8">
    <title>Car Portal</title>
    <link rel="website icon" type="png" href="./Logo1.png">
    <link rel="stylesheet" href="./stylr.css">
   <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    
</head>
<body class="bg-white">
<nav>
        <img src="./logo.ico" alt="logo" />
        </nav>
        
    <br>

<a  class="actionBtn2" href="http://localhost:8080/CarPortalProject/home.jsp#">
                <li class="navLink active">Home</li>
                </a>
                
                
                
                <br>
                <br>
                <br>
                <br>
  <div class = "open-congrats" id ="congrats">
  <img src="./yesicon.png" alt="congrats"/>
  <h2>Thanks For Using Car Portal To Sell Your Car   </h2>
  
  
  </div> 
    <%@ page import="java.sql.*" %>
  <%
  String car_name=request.getParameter("car_name1");
  System.out.println(car_name);
  String kilo_driven=request.getParameter("kilo_driven1");
  System.out.println(kilo_driven);
  String owners=request.getParameter("owners1");
  System.out.println(owners);
  String transmission=request.getParameter("transmission1");
  System.out.println(transmission);
  String fuel_type=request.getParameter("fuel_type1");
  System.out.println(fuel_type);
  String mileage=request.getParameter("mileage1");
  System.out.println(mileage);
  String engine=request.getParameter("engine1");
  System.out.println(engine);
  String seat=request.getParameter("seat1");
  System.out.println(seat);
  String age=request.getParameter("age1");
  System.out.println(age);
  String price=request.getParameter("price1");
  System.out.println(price);
  String pic=request.getParameter("pic1");
  System.out.println(pic);

	
String password = "Sharath1@";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/cardata","root",password);
		PreparedStatement stmt2=con2.prepareStatement("INSERT INTO `cardata`.`cardetails` (`photo`, `carname`, `kilometer`, `engine`, `seatNo`, `mileage`, `age`, `price`, `transmissionMode`, `ownership`, `fuel_type`) VALUES (?,?,?,?,?,?,?,?,?,?,?);"); 
		String pics="./"+pic;
		stmt2.setString(1,pics);
		stmt2.setString(2,car_name);
		stmt2.setString(3,kilo_driven);
		stmt2.setString(4,engine);
		stmt2.setString(5,seat);
		stmt2.setString(6,mileage);
		stmt2.setString(7,age);
		stmt2.setString(8,price);
		stmt2.setString(9,transmission);
		stmt2.setString(10,owners);
		stmt2.setString(11,fuel_type);
		
		int rs2 = stmt2.executeUpdate();
		
			System.out.println("Successfully updated" );
		
		con2.close();
	}
	catch(Exception e) {
		System.out.println(e);
	}
	
	
  
  %>
  
</body>
</html>