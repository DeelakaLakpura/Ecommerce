<%@page import="com.suwahas.connection.DbCon"%>
<%@page import="com.suwahas.dao.ProductDao"%>
<%@page import="com.suwahas.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>E-Mart</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
         @keyframes fadeInUp {
    0% {
      opacity: 0;
      transform: translateY(20px);
    }
    100% {
      opacity: 1;
      transform: translateY(0);
    }
  }
        .hero-section {
            background-image: url('https://i.ibb.co/7gFYDMC/New-Project.png');
            background-size: cover;
            background-position: center;
            height: 400px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }

        .hero-content {
            text-align: center;
        }

        .hero-content h1 {
            font-size: 40px;
            margin-bottom: 10px;
        }

        .hero-content p {
            font-size: 20px;
        }

        /* New styles for the gradient background */
        body {
            background: linear-gradient(to bottom, #f9f9f9, #e5e5e5); /* Replace with your desired gradient colors */
            margin: 0;
            padding: 0;
        }

        /* New styles for the footer */
        .footer {
            background-color: #333;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }

        .footer a {
            color: #fff;
        }
    </style>
</head>
<body>
    <%@include file="/includes/navbar.jsp"%>

    <!-- Hero Section -->
    <div class="hero-section">
        <div class="hero-content">
            <h1>Welcome to E-Mart</h1>
            <p>Your One-Stop Supermarket: Where Quality and Convenience Meet!</p>
        </div>
    </div>

    <!-- Products Container -->
    <div class="container">
     <div class="card-header my-3" style="animation: fadeInUp 1s ease-out;">Top Selling</div>
        <div class="row">
            <% if (!products.isEmpty()) {
                for (Product p : products) { %>
            <div class="col-md-3 my-3">
                <div class="card">
              
                    <img class="card-img-top" src="product-image/<%=p.getImage()%>" alt="Product Image">
                    <div class="card-body">
                        <h5 class="card-title"><%=p.getName()%></h5>
                        <h6 class="price">Price: Rs.<%=p.getPrice()%></h6>
                        <h6 class="category">Category: <%=p.getCategory()%></h6>
                        <div class="btn-container">
                            <a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a>
                            <a class="btn btn-success" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
                        </div>
                    </div>
                </div>
            </div>
            <% }
            } else {
                out.println("There are no products.");
            } %>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2023 E-Mart. All rights reserved.</p>
        <p>Contact: emart492@outlook.com</p>
    </div>
</body>
</html>
