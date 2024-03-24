<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="movie-about.aspx.cs" Inherits="DB_Project.movie_about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!--TITLE of the website-->
    <title>FunFlix</title>
 
     <link rel="icon" href="pictures/newlogo2.png" type="image/icon type"> 

    <!--Stylesheet BOOTSTRAP-->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!--Custom Stylesheet-->
    <%--<link rel="stylesheet" href="nav-bar.css">--%>
    
    <link rel="stylesheet" href="css/movie-about-2.css">

    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,500;0,600;1,400;1,500;1,600&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
   
</head>
   
       
        
<body>
    <div class="container1">
        <div class="container2">

            <div class="poster">
               <%-- <img src="pictures/johnny-english-cover.jpg" alt="">--%>
                <asp:Image id="movieImage" runat="server" />
            </div>
            <div class="info">
                <div class="movie-title">
                    <asp:Label ID="mName" runat="server"></asp:Label>
                </div>

                <div class="movie-detail">
                    <div class="set">
                        <label>Release Year</label>
                        <asp:Label ID="lblYear" CssClass="span" style="color: #ffffff ; margin-left:30% ;font-size:22px;" runat="server"></asp:Label>
                    </div>
                    <div class="set">
                        <label>Duration</label>
                        <asp:Label ID="lblDur" CssClass="span" style="color: #ffffff ; margin-left:18% ;font-size:22px;" runat="server"></asp:Label>
                    </div>
                    <div class="set">
                        <label>Genre</label>
                        <asp:Label ID="lblgen" CssClass="span" style=" color: #ffffff ;margin-left:0% ;font-size:22px;" runat="server"> </asp:Label>
                    </div>
                    <div class="set">
                        <label>Rating</label>
                        <asp:Label ID="lblrat" CssClass="span" style=" color: #ffffff ;margin-left:34% ;font-size:22px;" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="movie-description">
                    <asp:Label ID="desc" style="color: #ffffff; font-size:20px;" runat="server"></asp:Label>
                </div>

                <div class="mt-4 row text-center text-md">
                    <div class="col-md-6" align="right">
                        <button onclick="toggleTrailer('open')" class="open-trailer-btn">
                            Watch
                        </button>
                    </div>
                    
                </div>
              
                
                <div class="watchtrailer fixed-top" id="watchtrailer">
                    <i onclick="toggleTrailer('close')" class="fa-regular fa-circle-xmark close-icon"></i>
                    <%--<video controls src="trailers/johnny english.mp4" id="trailer-video" width="1200"></video>--%>
                    <video controls class="video" runat="server" ID="trailerVid" width="1200" height="600"></video>
                    
                </div>

            </div>
        </div>
    </div>

    <script src="js/movie-about-2.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>
    
</html>
