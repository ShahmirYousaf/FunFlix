<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="home2.aspx.cs" Inherits="DB_Project.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/style-home.css">
    <link rel="stylesheet" href="css/style-homeHelper.css">

    <link rel="stylesheet" href="css/profile-modal.css"/>
    
    <!--                   SYMBOL LINKS                -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />

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
        <p class="mt-5 text-center text-md-start" style="margin-bottom:10px; font-weight: 450; font-size: 18px; color: #252422; text-align: justify;" >
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

 <section>
        <div class="container-fluid mt-5 section-dark" style="border-radius: 0px; background-color: #ad0202;">
            <div class="d-md-flex">

                <!--            AFTER LOGIN PAGE             -->
                <div class="col my-auto text-center text-md">
               
                    <h2><span style="color: #ffc400ec; font-weight: 800;">Bonjour User! </span></h2>
                    <br>
                    <p style="color: #fffcf2; font-weight: 500;" class=" mt-3 my-auto">
                        Welcome to the extraordinary realm of FunFlix, where the boundaries of entertainment are shattered and 
                        the mundane is left far behind. Prepare to be swept away on a breathtaking odyssey into a universe brimming
                        with unparalleled creativity and cinematic brilliance. Our distinguished collection of handpicked masterpieces 
                        transcends the ordinary, curated meticulously to ignite your senses and transport you to realms of unparalleled 
                        enchantment. Delve into the depths of our treasure trove, where a tapestry of riveting narratives, awe-inspiring
                        visuals, and compelling performances awaits your eager exploration. 
                    <br>
                    <br>
                    <div class="mt-4 row text-center text-md">

                        <div class="col-md-6" align="right">
                            <button onclick="toggleModal('open')" type="button" class="btn btn-outline-warning btn-md" 
                                style="padding: 8px 25px; border-radius: 12%; border-bottom-width: thick; border-top-width: medium;
                                border-right-width: medium; border-left-width: medium;">Profile</button>
                        </div>
                        <div class="col-md-6" align="left">
                         <asp:LinkButton class="btn btn-outline-warning btn-md" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="padding: 8px 25px; border-radius: 12%; border-bottom-width: thick; border-top-width: 
                                medium; border-right-width: medium; border-left-width: medium;" Visible="True">Logout</asp:LinkButton>
                        </div>
                        
                    </div>
                </div>


                <div class="col my-auto text-center text-md" align="right">

                    <img src="pictures/homeDesign.png" width="80%" style="margin-left: 21.5%;">
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
    <div class="container-fluid mt-5 section-dark" style="border-radius: 2px; background-color: #000000;">
        <div class = "d-md-flex">
    

            <div class="col my-auto text-center text-md" align="left">
                
                <img src = "pictures/red-bg.jpg" width="85%" height="5%" style= "margin-left: -20%;" >
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
                    <button type="button" class="btn btn-outline-danger btn-md" style="padding:8px 28px ;border-radius: 12%; border-bottom-width:thick; border-top-width: medium; border-right-width: medium; border-left-width: medium;">About</button>
                </a>
               

                </div>
            </div>
         </div>

        </div>
    </div>

     <!--            PROFILE POPUP WINDOW                 -->

        <div class="profile-modal" id="profile-modal">
            <div class="d-md-flex">

            <i onclick="toggleModal('close')" class="fa-regular fa-circle-xmark close-icon"></i>
            <img src="pictures/pf.jpg" width="60%" alt="" />

            <div class="profile-info">
                <label>Name</label>
               <asp:Label style="color:#ff0000; margin-left:25%;" ID="lblName" runat="server"></asp:Label>
                <label>Email</label>
                <asp:Label style="color:#ff0000; margin-left:25%;" ID="lblEmail" runat="server"></asp:Label>
                <label>Phone Number</label>
                <asp:Label style="color:#ff0000; margin-left:25%;" ID="lblNo" runat="server"></asp:Label>
                <label>Package Subscribed</label>
                <asp:Label style="color:#ff0000; margin-left:25%;" ID="lblPack" runat="server"></asp:Label>
            </div>
                 </div>
        </div>

    </section>

    <!--             JAVASCRIPT LINKS                    -->
    
    <script src="js/profile-modal.js"></script>
</asp:Content>
