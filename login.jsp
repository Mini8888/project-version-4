<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.regex.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footwear Shop</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <%
    String dbUrl = "jdbc:mysql://localhost:3306/signup";
    String dbUser = "root";
    String dbPassword = "";

    String loginError = "";
    String usernameError = "";
    String passwordError = "";
    String confirmError = "";
    String emailError = "";

    if (request.getMethod().equalsIgnoreCase("POST")) {
        String action = request.getParameter("action");

        if ("login".equals(action)) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

                String query = "SELECT * FROM users WHERE username = ? AND password = ?";
                PreparedStatement stmt = conn.prepareStatement(query);
                stmt.setString(1, username);
                stmt.setString(2, password);
                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    session.setAttribute("username", username);
                    response.sendRedirect("index.jsp");
                } else {
                    loginError = "Invalid username or password.";
                }

                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
                loginError = "An error occurred.";
            }
        } else if ("signup".equals(action)) {
            String newUsername = request.getParameter("newUsername");
            String newPassword = request.getParameter("newPassword");
            String confirmPassword = request.getParameter("confirmPassword");
            String email = request.getParameter("email");
            String confirmEmail = request.getParameter("confirmEmail");

            // Username validation: must contain both letters and numbers
            Pattern usernamePattern = Pattern.compile("^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]+$");
            if (!usernamePattern.matcher(newUsername).matches()) {
                usernameError = "Username must contain both letters and numbers.";
            }

            // Password validation: must contain uppercase, lowercase, number, and special character
            Pattern passwordPattern = Pattern.compile("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$");
            if (!passwordPattern.matcher(newPassword).matches()) {
                passwordError = "Password must be at least 8 characters, include 1 uppercase letter, 1 lowercase letter, 1 number, and 1 special character.";
            }

            // Confirm password validation
            if (!newPassword.equals(confirmPassword)) {
                confirmError = "Passwords do not match.";
            }

            // Confirm email validation
            if (!email.equals(confirmEmail)) {
                emailError = "Emails do not match.";
            }

            if (usernameError.isEmpty() && passwordError.isEmpty() && confirmError.isEmpty() && emailError.isEmpty()) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

                    String insertQuery = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";
                    PreparedStatement stmt = conn.prepareStatement(insertQuery);
                    stmt.setString(1, newUsername);
                    stmt.setString(2, newPassword);
                    stmt.setString(3, email);
                    stmt.executeUpdate();

                    conn.close();
                    response.sendRedirect("login.jsp"); // Redirect to the login page after successful sign up
                } catch (Exception e) {
                    e.printStackTrace();
                    loginError = "An error occurred during signup.";
                }
            }
        }
    }
%>
    
    
<div class="container">
    <h1>FootWear Shop</h1>
    
    

    <!-- Login Form -->
    <div class="form-container" id="login">
        <h2>Login</h2>
        <form method="POST" action="">
            <input type="hidden" name="action" value="login">

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <small style="color:red;"><%= loginError %></small>

            <div class="button-container">
                <button type="submit">Login</button>
            </div>

            <p>Don't have an account? <a href="#" onclick="toggleForms('signup')">Sign Up</a></p>
        </form>
    </div>

    <!-- Sign Up Form -->
    <div class="form-container" id="signup" style="display:none;">
        <h2>Sign Up</h2>
        <form method="POST" action="">
            <input type="hidden" name="action" value="signup">

            <label for="newUsername">Username:</label>
            <input type="text" id="newUsername" name="newUsername" required>
            <small style="color:red;"><%= usernameError %></small>

            <label for="newPassword">Password:</label>
            <input type="password" id="newPassword" name="newPassword" required>
            <small style="color:red;"><%= passwordError %></small>

            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>
            <small style="color:red;"><%= confirmError %></small>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="confirmEmail">Confirm Email:</label>
            <input type="email" id="confirmEmail" name="confirmEmail" required>
            <small style="color:red;"><%= emailError %></small>

            <div class="button-container">
                <button type="submit">Sign Up</button>
            </div>

            <p>Already have an account? <a href="#" onclick="toggleForms('login')">Login</a></p>
        </form>
    </div>
</div>

<script>
    function toggleForms(formType) {
        const loginForm = document.getElementById('login');
        const signupForm = document.getElementById('signup');

        if (formType === 'signup') {
            loginForm.style.display = 'none';
            signupForm.style.display = 'block';
        } else {
            loginForm.style.display = 'block';
            signupForm.style.display = 'none';
        }
    }
</script>

<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://img.pikbest.com/wp/202346/running-shoes-background-minimalistic-3d-scene-isolated-sport-shoe-on-pastel_9631560.jpg!sw800');
        background-size: cover;
        background-position: center;
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: rgba(255, 255, 255, 0.7);
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        width: 400px;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    .form-container {
        margin-top: 20px;
    }

    label {
        margin-top: 10px;
        display: block;
    }

    input {
        width: 98%;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #000000;
        border-radius: 3px;
    }

    .button-container {
        text-align: center; /* Center the button */
    }

    button {
        width: 80%;
        padding: 10px 20px;
        background-color: #283a4d;
        color: white;
        border-radius: 9px;
        cursor: pointer;
    }

    button:hover {
        background-color:#797b7c ;
    }

    p {
        text-align: center;
    }

    a {
        color:#0d2557;
        text-decoration: none;
    }

    .password-requirements {
        margin-top: 10px;
        background-color: #f8d7da;
        border: 1px solid #f5c6cb;
        padding: 10px;
        border-radius: 5px;
    }

    .password-requirements h4 {
        margin: 0 0 10px 0;
    }

    .password-requirements ul {
        margin: 0;
        padding-left: 20px;
    }

    .password-requirements li {
        margin: 5px 0;
    }
</style>
</body>
</html>