<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .container {
            max-width: 400px;
/*            margin: 50px auto;*/
display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }

        h1 {
            text-align: center;
            font-weight: bold;
            font-size: 28px;
            color: #007BFF;
            margin-top: 20px;
            margin-bottom: 10px;
/*            text-transform: uppercase;*/
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #495057;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 15px;
        }

        .error {
            color: #FF6347;
            font-size: 14px;
            margin-bottom: 10px;
        }

        button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        .password-requirements {
            font-size: 12px;
            color: #999;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1>Login</h1>
<div class="container">
    <form onsubmit="return validateForm()" method="post" action="successlogin" id="loginForm">
        <label for="email">Email ID</label>
        <input
            type="text"
            id="email"
            name="email"
            placeholder="Enter Email"
            required
        />
        <small class="error" id="emailError"></small>

        <label for="password">Password</label>
        <input
            type="password"
            id="password"
            name="password"
            placeholder="Enter Password"
            required
        />
        <small class="error" id="passwordError"></small>
        <div class="password-requirements">
            Password must be at least 8 characters long and contain at least one
            uppercase letter, one lowercase letter, one digit, and one special
            character.
        </div>

        <button type="submit">Login</button>
    </form>
</div>
<script>
    function validateForm() {
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;

        // Email Validation
        var emailPattern = /^[a-zA-Z0-9]{1,20}(\.[a-zA-Z0-9]{1,20}){0,5}@[a-zA-Z0-9]{3,}(?:\.[a-zA-Z0-9-]+){1,5}$/;
        if (!email.match(emailPattern)) {
            document.getElementById("emailError").textContent = "Invalid email address";
            return false;
        } else {
            document.getElementById("emailError").textContent = "";
        }

        // ... (rest of the validation script for login form remains unchanged) ...

        return true;
    }
</script>
</body>
</html>
