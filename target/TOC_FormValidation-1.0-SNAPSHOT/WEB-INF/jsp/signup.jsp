<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Form for Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            text-align: center;
            color: #007BFF;
            font-weight: bold;
            font-size: 28px;
            margin-bottom: 20px;
            margin-top: 40px;
        }

        .container {
            max-width: 500px;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }

/*        .form-column {
            flex: 1;
            padding-right: 10px;
            box-sizing: border-box;
        }*/

        label {
            display: block;
            margin-bottom: 8px;
            color: #495057;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.3s;
            box-sizing: border-box;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .error {
            color: #FF6347;
            font-size: 14px;
            margin-top: 5px;
            margin-left: 5px;
        }

        .password-strength {
            font-size: 14px;
        }
    </style>
</head>
<body>
    <h1>Signup Form with Validation</h1>
    <div class="container">
        <form onsubmit="return validateForm()" action="signin" method="post">
        <div class="row">
            <div class="col">
                <label for="name">First Name</label>
                <input type="text" placeholder="Enter First Name" id="name" required />
                <div id="nameError" class="error"></div>

                <label for="mname">Middle Name</label>
                <input type="text" placeholder="(Optional)" id="mname" />
                <div id="mnameError" class="error"></div>

                <label for="lname">Last Name</label>
                <input type="text" placeholder="Enter Last Name" id="lname" required />
                <div id="lnameError" class="error"></div>

                <label for="age">Age</label>
                <input type="text" placeholder="Enter Age" id="age" required />
                <div id="ageError" class="error"></div>
            </div>

        <div class="col">
            <label for="email">Email</label>
            <input type="text" placeholder="Enter Email" id="email" required />
            <div id="emailError" class="error"></div>

            <label for="phone">Phone</label>
            <input type="text" placeholder="Enter Phone No" id="phone" />
            <div id="phoneError" class="error"></div>

            <label for="password">Password</label>
            <input type="password" placeholder="Enter Password" id="password" oninput="checkPasswordStrength()" />
            <div id="passwordError" class="error"></div>

            <div id="passwordStrength" class="password-strength"></div>

            <label for="dob">Date of Birth</label>
            <input type="text" placeholder="(dd/mm/yyyy)" id="dob" />
            <div id="dobError" class="error"></div>

        </div>
        <input type="submit" value="Sign Up">
        </div>
    </form>
    </div>
    <script>
        function validateForm() {
            resetErrors();

            var name = document.getElementById('name').value;
            var mname = document.getElementById('mname').value;
            var lname = document.getElementById('lname').value;
            var age = document.getElementById('age').value;
            var dob = document.getElementById('dob').value;
            var email = document.getElementById('email').value;

            var isValid = true;

            if (!/^[A-Z][a-z]{1,}$/.test(name)) {
                displayError('nameError', 'First letter not in capitals');
                isValid = false;
            }

            if (mname && !/^[A-Z][a-z]{1,}$/.test(mname)) {
                displayError('mnameError', 'First letter not in capitals');
                isValid = false;
            }

            if (!/^[A-Z][a-z]{1,}$/.test(lname)) {
                displayError('lnameError', 'First letter not in capitals');
                isValid = false;
            }

            if (!/^[0-9]{1,2}$/.test(age)) {
                displayError('ageError', 'Enter valid age!!');
                isValid = false;
            }

            if (!/^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/20[0-9]{2}$/.test(dob)) {
                displayError('dobError', 'Enter valid Date of Birth!!');
                isValid = false;
            }

            if (!/^[a-zA-Z0-9]{1,20}(\.[a-zA-Z0-9]{1,20}){0,5}@[a-zA-Z0-9]{3,}(?:\.[a-zA-Z0-9-]+){1,5}$/.test(email)) {
                displayError('emailError', 'Enter valid email!!');
                isValid = false;
            }

            return isValid;
        }

        function displayError(elementId, message) {
            document.getElementById(elementId).innerText = message;
        }

        function resetErrors() {
            var errorElements = document.querySelectorAll('.error');
            errorElements.forEach(function (element) {
                element.innerText = '';
            });
        }

//        var passwordInput = document.getElementById('password');
//        var togglePasswordButton = document.getElementById('togglePassword');
//        var toggleIcon = document.getElementById('toggleIcon');
//        var passwordVisible = false;
//
//        togglePasswordButton.addEventListener('click', function () {
//            passwordVisible = !passwordVisible;
//            passwordInput.type = passwordVisible ? 'text' : 'password';
//            toggleIcon.textContent = passwordVisible ? 'visibility_off' : 'visibility';
//        });

        
        var typingTimer;
        var doneTypingInterval = 1000;

        document.getElementById('password').addEventListener('input', function() {
            clearTimeout(typingTimer);
            typingTimer = setTimeout(checkPasswordStrength, doneTypingInterval);
        });

        function checkPasswordStrength() {
            var password = document.getElementById('password').value;
            var passwordStrength = document.getElementById('passwordStrength');
            
            if (/^(?=.*(?=.*[a-z])(?=.*[0-9])).{1,5}$/.test(password)) {
                passwordStrength.innerText = 'Weak';
                passwordStrength.style.color = '#FF6347';
            } else if (/^(?=.*(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z])).{6,8}$/.test(password)) {
                passwordStrength.innerText = 'Medium';
                passwordStrength.style.color = '#FFA500';
            } else if (/^(?=.*(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z])(?=.*[\!@#$%^&*])).{8,}$/.test(password)) {
                passwordStrength.innerText = 'Strong';
                passwordStrength.style.color = '#4CAF50';
            } 
            else {
                passwordStrength.innerText = 'Weak';
                passwordStrength.style.color = '#FF6347';
            }
        }
    </script>
</body>
</html>
