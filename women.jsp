<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footwear - Men's Collection</title>
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
            margin-bottom: 30px;
        }
        .price {
            margin-top: 10px;
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
    </style>
</head>
<body>

    <div class="nav">
    <!-- Left-aligned Category Links for Men, Women, Kids -->
    <div style="display: flex; align-items: center;">
        <div class="hamburger" onclick="toggleDropdown()">?</div>
        <div class="dropdown" id="dropdownMenu">
        <a href="index.jsp"><i class="fas fa-home"></i> Home</a>
      
    </div>
        <a href="men.jsp" style="margin-right: 5px; color: white;">Men's</a>
        <a href="women.jsp" style="margin-right: 5px; color: white;">Women's</a>
        <a href="kids.jsp" style="margin-right: 5px; color: white;">Kids</a>
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


    

    <h1>Women's Collection</h1>

    <div class="product-container">
        <div class="product">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST4pFx4RPU6oRvBANN-oQ4_auoGuB5ImmREMKxLKW6Nxwu_oe0sRpkxOXHPJi5jjvQkDU&usqp=CAU" alt="Shoe 1">
            <div class="price">$89.99</div>
            <div class="size-select">
                <label for="size1">Size:</label>
                <select id="size1">
                    <option value="40">40</option>
                    <option value="41">41</option>
                    <option value="42">42</option>
                    <option value="43">43</option>
                    <option value="44">44</option>
                    <option value="45">45</option>
                    <option value="46">46</option>
                </select>
            </div>
            <button class="buy-button">Buy Now</button>
        </div>
        <div class="product">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9KQ0horCtbk9JzNFDHqL8io-R_-UW-FCUlTBZpBHpCiUfxPtLnd5z-Xch0aURc1cmtXw&usqp=CAU" alt="Shoe 2">
            <div class="price">$120.99</div>
            <div class="size-select">
                <label for="size2">Size:</label>
                <select id="size2">
                    <option value="40">40</option>
                    <option value="41">41</option>
                    <option value="42">42</option>
                    <option value="43">43</option>
                    <option value="44">44</option>
                    <option value="45">45</option>
                    <option value="46">46</option>
                </select>
            </div>
            <button class="buy-button">Buy Now</button>
        </div>
        <div class="product">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0Xs1cNYPnsYfialA70wz6XaGuZpYvTs99p8k57Bh5l8pP6nee8_4Bij5V-acz_ARXu4A&usqp=CAU" alt="Shoe 3">
            <div class="price">$140.99</div>
            <div class="size-select">
                <label for="size3">Size:</label>
                <select id="size3">
                    <option value="40">40</option>
                    <option value="41">41</option>
                    <option value="42">42</option>
                    <option value="43">43</option>
                    <option value="44">44</option>
                    <option value="45">45</option>
                    <option value="46">46</option>
                </select>
            </div>
            <button class="buy-button">Buy Now</button>
        </div>
        <div class="product">
            <img src="https://down-ph.img.susercontent.com/file/sg-11134201-7rd4b-lv8qc2dx6qe1a1" alt="Shoe 4">
            <div class="price">$79.99</div>
            <div class="size-select">
                <label for="size4">Size:</label>
                <select id="size4">
                    <option value="40">40</option>
                    <option value="41">41</option>
                    <option value="42">42</option>
                    <option value="43">43</option>
                    <option value="44">44</option>
                    <option value="45">45</option>
                    <option value="46">46</option>
                </select>
            </div>
            <button class="buy-button">Buy Now</button>
        </div>
        <div class="product">
            <img src="https://down-ph.img.susercontent.com/file/ph-11134207-7r98p-ltq99rtzbwqr83" alt="Shoe 5">
            <div class="price">$89.99</div>
            <div class="size-select">
                <label for="size5">Size:</label>
                <select id="size5">
                    <option value="40">40</option>
                    <option value="41">41</option>
                    <option value="42">42</option>
                    <option value="43">43</option>
                    <option value="44">44</option>
                    <option value="45">45</option>
                    <option value="46">46</option>
                </select>
            </div>
            <button class="buy-button">Buy Now</button>
        </div>
        <div class="product">
            <img src="https://images.meesho.com/images/products/422903167/iqlpr_512.webp" alt="Shoe 6">
            <div class="price">$170.99</div>
            <div class="size-select">
                <label for="size6">Size:</label>
                <select id="size6">
                    <option value="40">40</option>
                    <option value="41">41</option>
                    <option value="42">42</option>
                    <option value="43">43</option>
                    <option value="44">44</option>
                    <option value="45">45</option>
                    <option value="46">46</option>
                </select>
            </div>
            <button class="buy-button">Buy Now</button>
        </div>
        <div class="product">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTY13BZrV33tSyj_sdaRlANhYb-3HIMVlTzQ&s" alt="Shoe 7">
            <div class="price">$100.99</div>
            <div class="size-select">
                <label for="size7">Size:</label>
                <select id="size7">
                    <option value="40">40</option>
                    <option value="41">41</option>
                    <option value="42">42</option>
                    <option value="43">43</option>
                    <option value="44">44</option>
                    <option value="45">45</option>
                    <option value="46">46</option>
                </select>
            </div>
            <button class="buy-button">Buy Now</button>
        </div>
        <div class="product">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ83FCs81VduN3spKWWmdo0LhvTCLAXPkY9w&s" alt="Shoe 8">
            <div class="price">$150.99</div>
            <div class="size-select">
                <label for="size8">Size:</label>
                <select id="size8">
                    <option value="40">40</option>
                    <option value="41">41</option>
                    <option value="42">42</option>
                    <option value="43">43</option>
                    <option value="44">44</option>
                    <option value="45">45</option>
                    <option value="46">46</option>
                </select>
            </div>
            <button class="buy-button">Buy Now</button>
        </div>
    </div>

     <script>
        // Predefined list of items
        const items = ['sandals', 'slippers', 'pumps', 'sneakers', 'boots', 'loafers'];

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




