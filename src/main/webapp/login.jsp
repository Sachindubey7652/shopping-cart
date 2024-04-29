<%@page import="cn.sachin.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	User auth = (User) request.getSession().getAttribute("auth");
	if (auth != null) {
		response.sendRedirect("index.jsp");
	}
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}
	%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>Login Page</title>
 <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            margin-top: 50px;
            max-width: 400px;
            margin-left: auto;
            margin-right: auto;
        }
    </style>

</head>
<body>
	<%@include file="/includes/navbar.jsp"%>

	<div class="container">
    <div class="card">
        <div class="card-header bg-primary text-white">
            <h3 class="text-center">User Login</h3>
        </div>
        <div class="card-body">
            <form action="user-login" method="post">
                <div class="form-group">
                    <label for="username">E-Mail</label>
                    <input type="email" class="form-control" id="username" placeholder="Enter email" name="login-email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter Password" name="login-password" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                </div>
            </form>
        </div>
        <div class="card-footer bg-white">
            <p class="text-center">Don't have an account? <a href="registration.jsp">Register here</a></p>
        </div>
    </div>
</div>

	<%@include file="/includes/footer.jsp"%>
</body>
</html>
