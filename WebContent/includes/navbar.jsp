<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">E-Mart</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="cart.jsp">Cart <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
                <%
                if (auth != null) {
                %>
                <li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
                <li class="nav-item"><a class="nav-link" href="log-out">Logout</a></li>
                <%
                } else {
                %>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                <%
                }
                %>
            </ul>
        </div>
    </div>
</nav>
            <style>
                .navbar-brand{
                                font-family: monospace;

                }/* Add a fade-in animation to the navbar links on hover */
.navbar-nav li.nav-item a {
    position: relative;
    transition: color 0.3s;
}

.navbar-nav li.nav-item a::after {
    content: "";
    position: absolute;
    bottom: -2px;
    left: 0;
    width: 100%;
    height: 2px;
    background-color: #333333; /* Change this color to match your theme */
    transform: scaleX(0);
    transition: transform 0.3s;
}

.navbar-nav li.nav-item a:hover::after {
    transform: scaleX(1);
}
</style>