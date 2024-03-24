<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="DB_Project.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="css/style-home.css">
    <link rel="stylesheet" href="css/style-homeHelper.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <!-----------------------CONTENT------------------->
<section>
<div class="container-md mt-5 section-dark" style="border-radius: 60px; height: 340px; background-color: #ffc400ec;">
    <div class="container">
        

        <div class="row text-center text-md" style="margin-bottom: 10px; padding-top: 1.5%;">
        <h2  style="color: #252422; font-weight: 600; font-size: 40px; letter-spacing: 1px; " class ="my-auto">
            Welcome to <span style="color: #ad0202;">FunFlix!</span> 
        </h2>
        </div>
        <hr class="hr-light" style="margin-bottom: 5px; margin-top: 8px; margin-left: 60px; margin-right: 60px; height: 4px; background-color: #000000;">
        <div class="row" style="margin-bottom: 10px; margin-left: 47px; margin-right: 47px; ">
        <p class="mt-5 text-center text-md-start" style="margin-bottom:10px; font-weight: 500; font-size: 18px; color: #252422; text-align: justify;" >
             We're thrilled to have you here. FunFlix is your go-to destination for all things entertainment. Our website offers a unique and diverse range of entertainment options to keep you
             engaged and entertained for hours on end. Along with the vast collection of classic and latest movies, we have a dedicated games section that features the latest and most popular
             games. And if that wasn't enough, our music section is loaded with vast library of songs, including exclusive tracks that you won't find anywhere else. Our collection of movies, 
             songs and games is constantly updated, so you'll never run out of options. Our state-of-the-art platform is designed to provide you with a seamless and enjoyable user experience.
             So sit back, relax, and let the fun begin.
        
        </p>
   
    </div>
</div>
</div>
</section>
    <div class="container">
        <hr class="hr-light" style="background-color: #ad0202;height: 3px;margin-bottom: 50px; margin-top: 100px;">
    </div>

<div class="container-md" style="padding-top: 3%; padding-bottom: 3%;">
    <div class="d-md-flex">

   <div class="col-md">
   <a href="movies.aspx">
    <div class="movie-pic"></div>
   </a>
   </div>

   <div class="col-md">
   <a href="games.aspx"> 
    <div class="games-pic"></div>
   </a>
   </div>

   <div class="col-md">
   <a href="songs.aspx"> 
    <div class="songs-pic"></div>
    </a><br>
   </div>

</div>
</div>
     <div class="container">
        <hr class="hr-light" style="background-color: #ad0202;height: 3px;margin-bottom: 50px; margin-top: 100px;">
    </div>




<section>
    <div class="container-fluid mt-5 section-dark" style="border-radius: 0px; background-color: #ad0202;">
        <div class = "d-md-flex">
    
            <div class="col my-auto text-center text-md" >
            <h2><span style="color: #ffc400ec; font-weight: 800;">So what are you waiting for? </span> </h2> <br >
            <p style="color: #fffcf2; font-weight: 500;" class =" mt-3 my-auto">
                
                 Enjoy exclusive content, popular movies and TV shows, fun-filled and thrilling games and chart-topping songs by joining our platform service now for only <span style="color: #ffc400ec; font-weight: 650;">$4.99 USD. </span> 
                 As a FunFlix subscriber, you can enjoy uninterrupted entertainment at your fingertips, without any commercial breaks or advertisements. And, in case you ever decide to take a break, you can cancel anytime with zero hassle.
                 Join the millions of satisfied FunFlix subscribers worldwide and start experiencing premium entertainment at its best. Subscribe now and enjoy your favorite movies, TV shows, songs, and games, all in one place.
            </p><br><br>
           <div class = "mt-4 row text-center text-md" > 
                <div class = "col-md-6" align = right>
                <a href="login.aspx">  
                    <button type="button" class="btn btn-outline-warning btn-md" style="padding:8px 30px ;border-radius: 12%; border-bottom-width:thick; border-top-width: medium; border-right-width: medium; border-left-width: medium;">Login</button>
                </a>
                </div>
                <div class = "col-md-6" align = left>
                    <a href="signup.aspx">  
                        <button type="button" class="btn btn-outline-warning btn-md" style="padding:8px 25px ; border-radius: 12%; border-bottom-width:thick; border-top-width: medium; border-right-width: medium; border-left-width: medium;">Sign Up</button>
                    </a>
                    </div>

            </div>
        </div>

        <div class="col my-auto text-center text-md" align="right">
                
            <img src = "pictures/web collage.png" width="80%" style="margin-left:21.6% ;">
        </div>
    </div>
        
    </div>

</section>

    <section>
    <div class="container-fluid mt-5 section-dark" style="border-radius: 2px; background-color: #000000;">
        <div class = "d-md-flex">
    

            <div class="col my-auto text-center text-md" align="left">
                
                <img src = "pictures/red-bg.jpg" width="85%" style= "margin-left: -20%;" >
            </div>


            <div class="col my-auto text-center text-md"  >
            <h1><span style="color: #ad0202; font-weight: 800; margin-right: 6%;">MEET THE CREATORS. </span> </h1> <br><br>
            <p style="color: #fffcf2; text-align: center;margin-right: 6%; font-weight: 500;letter-spacing: 0.8px;" class =" mt-3 my-auto">
                
                Introducing the masterminds behind <span style="color:#ffc400ec; font-weight: 600;">FunFlix</span> - a team of entertainment enthusiasts who are dedicated to crafting the most unforgettable experiences for you. With a shared passion for movies, games, and music, 
                we're constantly pushing the boundaries of what's possible and redefining the entertainment landscape. Get to know the innovative minds behind FunFlix, and discover the creative magic that sets us apart from the rest by visiting our <span style="color: #ffc400ec; font-weight: 600;">About</span> page.
            </p><br> <br>

            <div class = "mt-4 row text-center text-md" > 
                <div class = "col" align = centre>
                <a href="about.aspx">  
                    <button type="button" class="btn btn-outline-danger btn-md" style="padding:8px 30px ;border-radius: 12%; border-bottom-width:thick; border-top-width: medium; border-right-width: medium; border-left-width: medium;">About</button>
                </a>
               

                </div>
            </div>
         </div>

        </div>
    </div>

</section>
</asp:Content>
