<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%--
param1 : <%= request.getParameter("param1") %>
param2 : <%= request.getParameter("param2") %>
 --%>
    <footer class="center" id="Contact">
        <ul>
        <a href="http://localhost:8080/CarPortalProject/home.jsp"> <li>Home</li></a>
           
            
            <li>Services</li>
            <li>About Us</li>
        </ul>
        <ul>
            <li>FAQ's</li>
            <li>Terms And Condition</li>
            <li>Policy's</li>
        </ul>
        <div>
            <form method="post">
                <div class="row">
                    <label for="email">
                        <input type="text" required placeholder="Enter Email" name="email">
                    </label>
                </div>
                <div class="row">
                    <label for="password">
                        <input type="password" name="password" required placeholder="Enter Password">
                    </label>
                </div>
                <button class="actionBtn button">Submit</button>
            </form>
        </div>
    </footer>
</body>
</html>