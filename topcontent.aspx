<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="topcontent.aspx.cs" Inherits="DB_Project.topcontent2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="css/top-content.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-1">


        <div class="box-1" style="--i: 0;">
            <i></i>
            <div class="movie-container">
                <h1>Movies</h1>

                <asp:DataList class="TopMovies" ID="DataList1" runat="server" ItemStyle-CssClass="TopMoviesItem">
                    <ItemTemplate>
                        <asp:Image class="topmovie-pic" ID="Image1" ImageUrl='<%#Eval("MoviePic","Top-Movies/{0}") %>' runat="server" />
                        <asp:Label class="topmovie-name" ID="Label1" Text='<%#Eval("MovieName") %>' runat="server" />
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>

        <div class="box-2" style="--i: 0;">
            <i></i>
            <div class="song-container">
                <h1>Songs</h1>

                <asp:DataList class="TopSongs" ID="DataList2" runat="server" ItemStyle-CssClass="TopSongsItem">
                    <ItemTemplate>
                        <asp:Image class="topsong-pic" ID="Image2" ImageUrl='<%#Eval("picture","Top-Songs/{0}") %>' runat="server" />
                        <asp:Label class="topsong-name" ID="Label2" Text='<%#Eval("SongName") %>' runat="server" />
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>


        <div class="box-3" style="--i: 0;">
            <i></i>
            <div class="game-container">
                <h1>Games</h1>

                <asp:DataList class="TopGames" ID="DataList3" runat="server" ItemStyle-CssClass="TopGamesItem">
                    <ItemTemplate>
                        <asp:Image class="topgame-pic" ID="Image3" ImageUrl='<%#Eval("GamePic","Top-Games/{0}") %>' runat="server" />
                        <asp:Label class="topgame-name" ID="Label3" Text='<%#Eval("GameName") %>' runat="server" />
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
</asp:Content>
