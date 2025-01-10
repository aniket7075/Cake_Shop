<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Cake Shop</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('/uploads/berries.jpg');
            background-size: cover;
            background-position: center;
            color: white;
            text-align: center;
            background-attachment: fixed;
        }

        .home-container {
            background: rgb(211 197 197 / 76%);
    background-image: initial;
    background-position-x: initial;
    background-position-y: initial;
    background-size: initial;
    background-repeat: initial;
    background-attachment: initial;
    background-origin: initial;
    background-clip: initial;
    background-color: rgba(211, 197, 197, 0.76);
    padding: 50px;
    border-radius: 15px;
    box-shadow: -8px -7px 40px rgba(0, 0, 0, 0.3);
    width: 100%;
    max-width: 600px;
    text-align: center;
        }

        h1 {
            font-size: 48px;
            color: #333;
            margin-bottom: 20px;
            font-weight: bold;
        }

        p {
            font-size: 22px;
    color: #161616;
    margin-bottom: 30px;
        }

        .button {
            display: inline-block;
    background-color: #38bcc682;
    color: #342f2f;
    padding: 18px 40px;
    font-size: 20px;
    font-weight: bold;
    text-decoration: none;
    text-decoration-line: none;
    text-decoration-thickness: initial;
    text-decoration-style: initial;
    text-decoration-color: initial;
    border-radius: 8px;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
    border-bottom-right-radius: 8px;
    border-bottom-left-radius: 8px;
    margin-top: 20px;
    transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
    transition-behavior: normal, normal, normal;
    transition-duration: 0.3s, 0.3s, 0.3s;
    transition-timing-function: ease, ease, ease;
    transition-delay: 0s, 0s, 0s;
    transition-property: background-color, transform, box-shadow;
}

        .button:hover {
            background-color: #e07b00;
            transform: translateY(-4px);
            box-shadow: 0 4px 12px rgba(255, 140, 0, 0.4);
        }

        .button:active {
            background-color: #d06900;
            transform: translateY(2px);
        }

        .link-container {
            margin-top: 30px;
        }

        .link-container a {
            color: #ff8c00;
            font-size: 18px;
            text-decoration: none;
            margin: 0 15px;
        }

        .link-container a:hover {
            text-decoration: underline;
        }

        /* Background animation */
        @keyframes backgroundAnimation {
            0% { background-image: url('/uploads/berries.jpg'); }
            50% { background-image: url('https://resources/static/uploads/berries.jpg'); }
            100% { background-image: url('/uploads/berries.jpg'); }
        }

       

    </style>
</head>
<body>

    <div class="home-container">
        <h1>Welcome to the Cake Shop</h1>
        <p>Your one-stop destination for the finest cakes, baked with love.</p>
        
        <a href="registration.jsp" class="button">Register</a>
        <a href="login.jsp" class="button">Login</a>

        <div class="link-container">
            <p>Explore our delicious cakes and exclusive offers!</p>
           
        </div>
    </div>

</body>
</html>
