<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="start.aspx.cs" Inherits="DB_Project.start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--TITLE of the website-->
    <title>FunFlix</title>

    <link rel="icon" href="pictures/newlogo2.png" type="image/icon type">

    <!--Stylesheet BOOTSTRAP-->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <script>
        setTimeout(function () {
            window.location.href = "home.aspx";
        }, 7000); // 5000 milliseconds = 5 seconds
    </script>


    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,500;0,600;1,400;1,500;1,600&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="css/start.css" />
    <link rel="stylesheet" href="css/loading.css" />
    <link rel="stylesheet" href="style.css" />
</head>
<body>

    <img src="pictures/newlogo1.png" width="320px" height="140px" style="margin-top: 200px; margin-left: 285px;" class="image" alt="">

    <div class="content">
        <h1>FUNFLIX</h1>
        <h1>FUNFLIX</h1>
    </div>


    <!--LOADING   -->


    <div class="loading">
        <div class="text"></div>
        <label class="percent">50%</label>
        <div class="progress-bar">
            <div class="progress"></div>
        </div>
    </div>
    <script src="load.js"></script>
     <script src="script.js"></script>

</body>
</html>
