<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="games.aspx.cs" Inherits="DB_Project.Games" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/style-games.css">
    <link rel="stylesheet" href="css/style-gamesHelper.css">
    <link rel="stylesheet" href="css/games-list-2.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="hero" style="background-image: url('Game-Pics/hero-background.jpg')">
        <div class="container">

            <div class="hero-content">

                <p class="hero-subtitle">World Gaming</p>

                <h1 class="h1 hero-title">Cloud <span class="span">Raiders</span>
                </h1>

                <p class="hero-text">
                    <%--Find technology or people for digital projects in public sector and Find an individual specialist
                    develope
                    researcher.--%>
                    Step right into the captivating universe of FunFlix games! Our website presents an extensive range
                    of immersive and exhilarating games that are bound to captivate you for hours on end. 
                    From adrenaline-fueled adventures to thought-provoking puzzles, our games are meticulously crafted to engage 
                    and delight players of every age group.
                </p>

                <a href="games-about.html">
                    <button class="game-btn">Read More</button>
                </a>

            </div>

            <figure class="hero-banner img-holder" style="--width: 700; --height: 700;">
                <img src="Game-Pics/hero-banner.png" width="700" height="700" alt="hero banner" class="w-100">
            </figure>

        </div>
    </section>


    <section class="brand" aria-label="brand">
        <div class="container2">

            <div class="brand-item">
                <img src="Game-Pics/brand-1.png" width="90" height="90" alt="brand logo">
            </div>

            <div class="brand-item">
                <img src="Game-Pics/brand-2.png" width="90" height="90" alt="brand logo">
            </div>

            <div class="brand-item">
                <img src="Game-Pics/brand-3.png" width="90" height="90" alt="brand logo">
            </div>

            <div class="brand-item">
                <img src="Game-Pics/brand-4.png" width="90" height="90" alt="brand logo">
            </div>

            <div class="brand-item">
                <img src="Game-Pics/brand-5.png" width="90" height="90" alt="brand logo">
            </div>

            <div class="brand-item">
                <img src="Game-Pics/brand-6.png" width="90" height="90" alt="brand logo">
            </div>

        </div>
    </section>


    <div class="container-3">
        <asp:DataList runat="server" ID="GameDataList" CssClass="GameDataList" RepeatDirection="Horizontal" RepeatLayout="Flow" RepeatColumns="3" ItemStyle-CssClass="GameItemTemplate" ItemStyle-Width="30%">
            <ItemTemplate>

                <asp:Image class="game-pic" ID="Image1" ImageUrl='<%#Eval("GamePic","Game-Pics/{0}") %>' runat="server" />
                <a href="game-about.aspx">
                    <button class="game-list-btn">
                        <h3>
                            <asp:Label CssClass="game-name" ID="Label1" Text='<%#Eval("GameName") %>' runat="server" />
                        </h3>
                    </button>
                </a>

            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
