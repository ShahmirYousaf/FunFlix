<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="song-about.aspx.cs" Inherits="DB_Project.song_about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!--TITLE of the website-->
    <title>FunFlix</title>

    <link rel="icon" href="pictures/logo_TRA_p.png" type="image/icon type">

    <!--Stylesheet BOOTSTRAP-->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!--Custom Stylesheet-->
  
  
    <link rel="stylesheet" href="css/songs-about-2.css" />

    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,500;0,600;1,400;1,500;1,600&display=swap"
        rel="stylesheet" />

    <!-- Adding link of logos of social media -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
    <script src="https://kit.fontawesome.com/c4254e24a8.js" crossorigin="anonymous"></script>
</head>
<body>
  
      <div class="container1">
        <div class="container2">

            <div class="poster">
                <asp:Image runat="server" ID="songP"  alt=""/>
            </div>
            <div class="info">
                <div class="movie-title">
                    <asp:Label ID="title" runat="server" />
                </div>

                <div class="movie-detail">
                    <div class="set">
                        <label>Release Year</label>
                        <asp:Label style="color:#871000 ; font-size:20px;font-weight:600;" Cssclass="span" ID="date" runat="server" />
                    </div>
                    <div class="set">
                        <label>Duration</label>
                        <asp:Label style="color:#871000 ; font-size:20px; font-weight:600;" class="span" ID="Duration" runat="server" />
                    </div>
                </div>

                <div class="movie-cast">
                    <asp:Image class="img" ID="artPic" runat="server" />
                    <asp:Label style="color:#871000 ; font-size:22px;" class="label" ID="Artist" runat="server" />
                </div>

                <div class="container4 mt-4 row text-center text-md">
                    <img onclick="toggleSong('play')" src="pictures/pause-button.png" id="icon">

                    <audio id="MySong" runat="server">
                          <source  type="audio/mp4" />
                    </audio>
                    
                    <input type="range" value="0" id="progress" />
                    <span class="current-time">00:00</span>
                    <%--<span class="song-duration">03:31</span>--%> <!-- ye time bhi ana database se lekin is format mein-->
                    <asp:Label ID="lblS" runat="server" CssClass="song-duration"></asp:Label>
                </div>
            </div>
        </div>
    </div>

    
    <script src="js/songs-about-2.js"></script>
   
</body>
</html>
