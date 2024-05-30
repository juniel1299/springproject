<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banner Example</title>
    <style>
        .banner {
            position: relative;
            width: 100%;
            height: 200px; /* Adjust the height as needed */
            background-color: #eee; /* Placeholder color */
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 10px;
            overflow: hidden; /* Ensure the image fits within the banner */
        }

        .banner img {
            width: 100%;
            height: 100%;
            object-fit: cover; /* Cover the entire banner area */
        }

        .banner p {
            position: absolute;
            color: white;
            font-size: 24px;
            font-weight: bold;
            z-index: 1;
        }

        body.dark-mode .banner {
            background-color: #444;
        }
    </style>
</head>
<body>
    <div class="banner">
        <img src="/img/banner.jpg" alt="Banner Image">
        <p>ㅎㅇ</p>
        <!-- 이미지가 들어갈 공간 -->
    </div>
</body>
</html>
