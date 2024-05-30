<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header Example</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            transition: background-color 0.3s, color 0.3s;
        }

        body.light-mode {
            background-color: #fff;
            color: #000;
        }

        body.dark-mode {
            background-color: #121212;
            color: #ffffff;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        body.dark-mode .header {
            background-color: #1f1f1f;
        }

        .header-left {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .logo img {
            height: 40px;
        }

        .nav-links {
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }

        body.dark-mode .nav-links a {
            color: #ddd;
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .theme-toggle,
        .dark-mode-toggle,
        .login {
            background-color: #f1f1f1;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
        }

        .theme-toggle:hover,
        .dark-mode-toggle:hover,
        .login:hover {
            background-color: #e1e1e1;
        }

        body.dark-mode .theme-toggle,
        body.dark-mode .dark-mode-toggle,
        body.dark-mode .login {
            background-color: #333;
            color: #fff;
        }

        body.dark-mode .theme-toggle:hover,
        body.dark-mode .dark-mode-toggle:hover,
        body.dark-mode .login:hover {
            background-color: #555;
        }
    </style>
</head>
<body class="light-mode">
    <header class="header">
        <div class="header-left">
            <div class="logo">
                <a href="/index.do">
                    <img src="/img/logo.jpg" alt="Logo">
                </a>
            </div>
            <nav class="nav-links">
                <a href="#">Feed</a>
                <a href="#">Explore</a>
                <a href="#">Ranking</a>
            </nav>
        </div>
        <div class="header-right">
            <input type="text" placeholder="Search..." class="search">
            <button class="theme-toggle">Search</button>
            <button class="dark-mode-toggle" onclick="toggleDarkMode()">다크 모드</button>
            <button class="login">로그인</button>
        </div>
    </header>
    <script>
        function toggleDarkMode() {
            const body = document.body;
            body.classList.toggle('dark-mode');
            body.classList.toggle('light-mode');

            const darkModeButton = document.querySelector('.dark-mode-toggle');
            if (body.classList.contains('dark-mode')) {
                darkModeButton.textContent = '라이트 모드';
            } else {
                darkModeButton.textContent = '다크 모드';
            }
        }
    </script>
</body>
</html>