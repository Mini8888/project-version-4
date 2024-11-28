<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMj9LDVOnFZJ6c18RtW9ESYrY5Chv1gKhZZrHbR" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.pikbest.com/wp/202346/running-shoes-background-minimalistic-3d-scene-isolated-sport-shoe-on-pastel_9631560.jpg!sw800') no-repeat center center fixed;
            background-size: cover;
            color: white;
            margin: 0;
            padding: 20px;
        }
        h1, h2, p {
            text-align: center;
        }
        h1 {
            font-size: 3em;
            color: #fff;
            text-shadow: 3px 3px 8px rgba(0, 0, 0, 0.5);
        }
        .nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: rgba(0, 0, 0, 0.7);
    padding: 20px 20px; /* Increased padding for more height */
    position: sticky;
    top: 0;
    z-index: 1000;
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
      
        .nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
        }
       
        .hamburger {
            cursor: pointer;
            font-size: 24px;
        }
        
        .contact-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9);
            color: #333;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .contact-container h2 {
            font-size: 1.8em;
            color: #333;
            margin-bottom: 10px;
        }
        .contact-container input, .contact-container textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .contact-container button {
            width: 100%;
            padding: 10px;
            background: #808080;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .contact-container button:hover {
            background: #6e6e6e;
        }
        .footer {
            text-align: center;
            padding: 10px;
            background-color: #333;
            color: white;
            margin-top: 30px;
        }
        .error {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    
                           
    <div class="nav">
        
        <a href="index.jsp" >Home</a>
        <a href="men.jsp">Men</a>
        <a href="women.jsp">Women</a>
        <a href="kids.jsp">Kids</a>
        
        
     


</div>
    

    <!-- Contact Form -->
    <div class="contact-container">
        <h2>Contact Us</h2>
        <p>Have questions or need assistance? Reach out to us below!</p>
        <form id="contactForm">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Minahil Shahzadi">
            <small id="nameError" class="error"></small>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="abc@gmail.com">

            <label for="message">Message:</label>
            <textarea id="message" name="message" placeholder="Write your message here..."></textarea>
            <small id="messageError" class="error"></small>

            <button id="sendMessageButton" type="button">Send Message</button>
            <p id="formError" class="error"></p>
        </form>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 MiniMiners. All rights reserved.</p>
        <p>
            Follow us on 
            <a href="#" style="color: white;">Facebook</a>, 
            <a href="#" style="color: white;">Instagram</a>
        </p>
    </footer>

    <script>
        // Form Validation
        document.getElementById('sendMessageButton').addEventListener('click', function () {
            const nameInput = document.getElementById('name');
            const messageInput = document.getElementById('message');
            const nameError = document.getElementById('nameError');
            const messageError = document.getElementById('messageError');
            const formError = document.getElementById('formError');

            let hasError = false;

            if (!/^[A-Za-z\s]+$/.test(nameInput.value)) {
                nameError.textContent = "Name should not contain numbers or special characters.";
                hasError = true;
            } else {
                nameError.textContent = "";
            }

            if (messageInput.value.trim().length < 10) {
                messageError.textContent = "Message should be at least 10 characters.";
                hasError = true;
            } else {
                messageError.textContent = "";
            }

            if (!hasError) {
                alert("Message sent successfully!");
            } else {
                formError.textContent = "Please fix the errors above.";
            }
        });
    </script>
</body>
</html>

