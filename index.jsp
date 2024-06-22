<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Electronic Accessories Store</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .header-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            padding: 10px;
        }
        .header-container img {
            height: 50px;
        }
        .search-bar {
            flex: 1;
            display: flex;
            margin-left: 20px;
        }
        .search-bar input[type="text"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px 0 0 5px;
            font-size: 1em;
        }
        .search-bar button {
            padding: 10px 20px;
            border: none;
            border-radius: 0 5px 5px 0;
            background-color: #2550fc;
            color: #fff;
            font-size: 1em;
            cursor: pointer;
        }
        nav {
            background: linear-gradient(to right, #5a11ba, #2550fc);
            overflow: hidden;
            text-align: center;
        }
        nav a {
            display: inline-block;
            color: #fff;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 1em;
        }
        .container {
            width: 90%;
            margin: auto;
            overflow: hidden;
        }
        .product {
            background-color: #fff;
            margin: 20px 0;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            cursor: pointer;
        }
        .product img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
            transition: transform 0.3s ease;
        }
        .product:hover img {
            transform: scale(1.1);
        }
        .product-details {
            width: 100%;
            padding: 0 20px;
        }
        .product-title {
            font-size: 1.5em;
            margin: 10px 0;
        }
        .product-description {
            font-size: 1em;
            color: #666;
            margin: 10px 0;
        }
        .product-price {
            font-size: 1.2em;
            color: #333;
            margin: 10px 0;
        }
        .about-section {
            background-color: #fff;
            margin: 20px 0;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .about-section h2 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }
        @media (min-width: 600px) {
            .product {
                flex-direction: row;
                text-align: left;
            }
            .product img {
                max-width: 200px;
            }
        }
    </style>
</head>
<body>
    <div class="header-container">
        <img src="https://raw.githubusercontent.com/HadyGrowlancher/ZahiStore/main/Round%20Photo_Jun222024_225425.png" alt="Store Logo"> <!-- Replace 'logo.png' with the path to your logo image -->
        <form action="index.jsp" method="GET" class="search-bar">
            <input type="text" name="query" placeholder="Search for products...">
            <button type="submit">Search</button>
        </form>
    </div>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="contact.jsp">Contact Us</a>
    </nav>
    <div class="container">
        <%-- Java code to process search query and display results --%>
        <% String query = request.getParameter("query"); %>
        <% if (query != null && !query.isEmpty()) { %>
            <h2>Search Results for "<%= query %>"</h2>
            
            <%-- Example product listings (replace with your actual product data) --%>
            <div class="product">
                <img src="https://via.placeholder.com/150" alt="Product Image">
                <div class="product-details">
                    <h3 class="product-title">Wireless Headphones</h3>
                    <p class="product-description">High-quality wireless headphones with noise-cancellation and long battery life.</p>
                    <p class="product-price">$99.99</p>
                </div>
            </div>
            
            <div class="product">
                <img src="https://via.placeholder.com/150" alt="Product Image">
                <div class="product-details">
                    <h3 class="product-title">Fast Charger</h3>
                    <p class="product-description">Quick charge your devices with this powerful and compact fast charger.</p>
                    <p class="product-price">$29.99</p>
                </div>
            </div>
            
            <div class="product">
                <img src="https://via.placeholder.com/150" alt="Product Image">
                <div class="product-details">
                    <h3 class="product-title">Mechanical Keyboard</h3>
                    <p class="product-description">Enjoy a smooth and responsive typing experience with this mechanical keyboard.</p>
                    <p class="product-price">$59.99</p>
                </div>
            </div>
        <% } else { %>
            <h2>Welcome to our Store!</h2>
            <p>Explore our wide range of electronic accessories.</p>
        <% } %>
    </div>
</body>
        </html>
