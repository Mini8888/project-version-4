<%-- 
    Document   : homepage.html
    Created on : Oct 28, 2024, 1:04:21 PM
    Author     : ADMIN
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footwear Shop - Shop All</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.pikbest.com/wp/202346/running-shoes-background-minimalistic-3d-scene-isolated-sport-shoe-on-pastel_9631560.jpg!sw800') no-repeat center center fixed;
            background-size: cover;
            color: white;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 40px;
            font-size: 3em;
            background: linear-gradient(90deg, #a53d23, #c57f49);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 3px 3px 5px rgba(129, 123, 123, 0.7), 0 0 25px rgba(255, 255, 255, 0.5);
            letter-spacing: 2px;
            padding: 10px 0;
            border-bottom: 2px solid rgba(37, 36, 36, 0.5);
        }
        .nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 10px 20px;
            position: relative;
            z-index: 1000;
        }
       .nav .hamburger {
        margin-right: auto; /* Push it to the left */
        }
        .nav .search-bar {
            display: flex;
            align-items: center;
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 20px;
            padding: 5px 10px;
            margin-right:0px
            width:50px;
        }
        .nav .search-bar input[type="text"] {
            border: none;
            background: transparent;
            color: white;
            outline: none;
            padding: 2px;
            font-size: 16px;
width: 100%;
        }
        .nav .search-bar .fas {
            color: white;
            margin-right: 3px;
        }
 .nav .search-bar .suggestions {
            position: absolute;
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 5px;
            margin-top: 5px;
            z-index: 999;
            display: none; /* Initially hidden */
            max-height: 150px; /* Limit height of suggestions */
            overflow-y: auto; /* Scroll if necessary */
            width: 150px; /* Match search bar width */
        }
        .nav .search-bar .suggestions div {
            padding: 8px;
            color: white;
            cursor: pointer;
        }
        .nav .search-bar .suggestions div:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }
        .nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
        }
        .add-to-cart {
    padding: 10px; /* Adjust padding as needed */
    color: white;
    transition: color 0.3s;
}
        .add-to-cart:hover {
            background-color: #0056b3;
        }
        .hamburger {
            cursor: pointer;
            font-size: 24px;
        }
        .dropdown {
            display: none;
            position: absolute;
            top: 60px;
            left: 20px;
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 5px;
            padding: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            z-index: 999;
        }
        .dropdown a {
            color: rgb(243, 240, 240);
            text-decoration: none;
            display: flex;
            align-items: center;
            padding: 5px 0;
        }
        .dropdown a i {
            margin-right: 10px;
        }
        .product-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            justify-items: center;
        }
        .product {
            background: rgba(0, 0, 0, 0.8);
            border-radius: 5px;
            padding: 15px;
            text-align: center;
            width: 90%;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
            transition: transform 0.2s;
        }
        .product:hover {
            transform: scale(1.05);
        }
        img {
            width: 80%;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .price {
            margin-top: 50px;
            font-size: 20px;
            color: #79460c;
        }
        .size-select {
            margin: 10px 0;
        }
        .buy-button {
            padding: 10px 15px;
            background-color: #283a4d;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            transition: background-color 0.3s;
        }
        .buy-button:hover {
            background-color: #0056b3;
        }
 .footer {
            background-color: #283a4d;
            color: white;
            text-align: center;
            padding: 20px 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }
 /* Dropdown menu styling */
 #dropdownMenu {
        margin-bottom: 20px;
    }

    /* Image scroller styling */
    .image-scroller {
        overflow: hidden;
        width: 100vw;
        white-space: nowrap;
 padding-top: 30px; /* Space between menu and scroller */
    }

    .image-track {
        display: flex;
          animation: scroll 20s linear infinite ;
    }

    .image-track img {
        height: 500px; /* Adjust as needed */
        flex-shrink: 0;
        width: 100vw; /* Each image will occupy the full width of the screen */
    }

    /* Animation for scrolling */
    @keyframes scroll {
        0% { transform: translateX(0); }
        100% { transform: translateX(-400%); } /* Adjust based on number of images */
    }
    .category-dropdown {
            position: relative;
            display: inline-block;
            color: white;
        }
        .category-dropdown-content {
            display: none;
            position: absolute;
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 5px;
            min-width: 150px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }
        .category-dropdown-content a {
            color: white;
            padding: 8px 12px;
            text-decoration: none;
            display: block;
        }
        .category-dropdown-content a:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }
        .category-dropdown:hover .category-dropdown-content {
            display: block;
        }
    </style>
</head>
<body>

   <div class="nav">
        <!-- Left-aligned Category Links for Men, Women, Kids with Dropdowns -->
        <div style="display: flex; align-items: center;">
            <div class="hamburger" onclick="toggleDropdown()">☰</div>
            
            <div class="category-dropdown">
                <a href="men.jsp" style="color: white;">Men's</a>
                <div class="category-dropdown-content">
                    <a href="men.jsp">Loafers</a>
                    <a href="men.jsp">Slippers</a>
                    <a href="men.jsp">Sneakers</a>
                </div>
            </div>
            
            <div class="category-dropdown">
                <a href="women.jsp" style="color: white;">Women's</a>
                <div class="category-dropdown-content">
                    <a href="women.jsp">Sandals</a>
                    <a href="women.jsp">Slippers</a>
                    <a href="women.jsp">Pumps</a>
                </div>
            </div>
            
            <div class="category-dropdown">
                <a href="kids.jsp" style="color: white;">Kids</a>
                <div class="category-dropdown-content">
                    <a href="kids.jsp">boots</a>
                    <a href="kids.jsp">Slippers</a>
                    <a href="kids.jsp">crocs</a>
                </div>
            </div>
        </div>
     <!-- Search Bar -->
    <div class="search-bar" style="margin-left: auto;">
        <i class="fas fa-search"></i>
        <input type="text" placeholder="Search products..." oninput="filterSuggestions()">
        <div class="suggestions" id="suggestions"></div>
    </div>

    <!-- Cart Icon -->
    <div>
        <a href="#" class="add-to-cart">
            <i class="fas fa-shopping-cart"></i>
        </a>
    </div>
</div>

<!-- Ensure Font Awesome is loaded -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMj9LDVOnFZJ6c18RtW9ESYrY5Chv1gKhZZrHbR" crossorigin="anonymous">

<div class="dropdown" id="dropdownMenu">
  
    <a href="login.jsp"><i class="fas fa-sign-in-alt"></i> Login Here</a>
    <a href="contactus.jsp"><i class="fas fa-envelope"></i> Contact Us</a>
</div>
<!-- Image Scroller -->
<div class="image-scroller">
    <div class="image-track">
        <img src="https://insignia.com.pk/cdn/shop/files/1880x720_copy_5_1660x.jpg?v=1726825815" alt="Shoe 1">
        <img src="https://insignia.com.pk/cdn/shop/files/1880x720_copy_3_d41a586e-f835-4848-b34a-691b806a3079_1660x.jpg?v=1726825815" alt="Shoe 2">
        <img src="https://insignia.com.pk/cdn/shop/files/1880x720_copy_de961133-8614-42c0-b0b6-481f041442e8_1660x.jpg?v=1726825815" alt="Shoe 3">
        <img src="https://insignia.com.pk/cdn/shop/files/1880x720_copy_4_1660x.jpg?v=1726825815" alt="Shoe 4">
<img src="https://insignia.com.pk/cdn/shop/files/1880x720_copy_5_1660x.jpg?v=1726825815" alt="Shoe 1 Clone"> <!-- Clone of the first image -->    
     </div>
</div>
   
     <script>
        // Predefined list of items
        const items = ['sandals', 'slippers', 'pumps', 'sneakers', 'boots', 'loafers', 'crocs'];

        function filterSuggestions() {
            const input = document.getElementById('searchInput');
            const suggestionsDiv = document.getElementById('suggestions');
            const query = input.value.toLowerCase();

            // Clear previous suggestions
            suggestionsDiv.innerHTML = '';

            if (query) {
                // Filter items based on the user's input
                const filteredItems = items.filter(item => item.toLowerCase().includes(query));

                // Show suggestions if there are any matches
                if (filteredItems.length > 0) {
                    suggestionsDiv.style.display = 'block';
                    filteredItems.forEach(item => {
                        const suggestionDiv = document.createElement('div');
                        suggestionDiv.textContent = item;
                        suggestionDiv.onclick = () => {
                            input.value = item; // Set input value to selected item
                            suggestionsDiv.style.display = 'none'; // Hide suggestions
                        };
                        suggestionsDiv.appendChild(suggestionDiv);
                    });
                } else {
                    suggestionsDiv.style.display = 'none'; // Hide if no matches
                }
            } else {
                suggestionsDiv.style.display = 'none'; // Hide if input is empty
            }
        }

        function toggleDropdown() {
            const dropdown = document.getElementById('dropdownMenu');
            dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
        }

        // Close the dropdown if the user clicks outside of it
        window.onclick = function(event) {
            const dropdown = document.getElementById('dropdownMenu');
            if (!event.target.matches('.hamburger')) {
                if (dropdown && dropdown.style.display === 'block') {
                    dropdown.style.display = 'none';
                }
            }
            const suggestionsDiv = document.getElementById('suggestions');
            if (suggestionsDiv && !suggestionsDiv.contains(event.target)) {
                suggestionsDiv.style.display = 'none'; // Hide suggestions if clicking outside
            }
        };
 
    </script>
<footer class="footer">
    <p>&copy; 2024 MiniMInners. All rights reserved.</p>
    <p>Follow us on 
        <a href="#" style="color: white;">Facebook</a>, 
        <a href="#" style="color: white;">Instagram</a>
    </p>
</footer>
</body>
</html>

