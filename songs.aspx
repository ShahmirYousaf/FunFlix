<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="songs.aspx.cs" Inherits="DB_Project.songs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/style-songs.css">
    <link rel="stylesheet" href="css/style-songs-Helper.css">
    <link rel="stylesheet" href="css/songs-list.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
     <div class="container3" style="padding-top: -0.5%; margin-left: 0.5%; margin-right: 0.5%;">
        <div class="container-fluid mt-5 section-dark" style="border-radius: 10px; background: #212529; min-height: 70vh; backdrop-filter: blur(4px) contrast(40%); border: 2px solid #7ECCFA;">
            <div class="d-md-flex">

                <div class="col my-auto text-center text-md" style="padding-top: 1.75%;">
                    <h2><span style="color: #ff1e00; font-weight: 800;">GUL </span>
                    </h2>
                        <p style="color: #fffcf2;text-align: center;  font-weight: 500;" class=" mt-3 my-auto">
                            <span style="color: #ff1e00; font-weight: 650;"> Anuv Jain's </span>  mellifluous voice lends an aura of enchantment to the captivating melody that is "Gul" 
                            elevating the song to new heights of musical excellence. The exquisite lyrics of the
                            ballad are expertly crafted by Jain himself, underscoring his prowess as both a melodist and a lyricist.
                            <br><br>
                            Furthermore, the enchanting composition is a testament to Jain's artistic acumen, as he has successfully 
                            woven together various musical elements to create a symphonic masterpiece. Indeed, "Gul" is a manifestation 
                            of Jain's musical finesse, evident in every note of the song.
                        
                        </p>
                    <div class="container1 mt-4 row text-center text-md">
                        <img onclick="toggleSong('play')" src="pictures/btn1.png" id="icon">

                        <audio id="mySong">
                            <source src="songs/Gul.mp4" type="audio/mp4">
                           
                        </audio>
                    </div>
                </div>

                <div class="col my-auto text-center text-md" align="right">
                    <img style="margin-left:20.8%;"src="pictures/GUl1.jpg" width="80%" height="500vh">
                </div>
            </div>
        </div>
    </div>

    <div class="container2">
        <asp:DataList class="datalist1" ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" RepeatColumns="2" ItemStyle-CssClass="item-datalist" ItemStyle-Width="45%">
            <ItemTemplate>
                <div class="container2-1-1">
                    <a onclick="setSession('<%# Eval("SongName") %>')">
                        <button type="button" class="song-btn">
                            <asp:Image class="song-pic" ID="Image1" ImageUrl='<%#Eval("picture","songs-pics/{0}") %>' runat="server" />
                            <%--<img class="song-pic" src='<%#Eval("song_pic","song-pics/{0}") %>' alt="">--%>
                            <h1>
                                <asp:Label CssClass="song-name" ID="Label1"  Text='<%#Eval("SongName") %>' runat="server" />
                            </h1>
                        </button>
                    </a>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>

    <script type="text/javascript">
        
        const setSession = (songName) =>
        {
            sessionStorage.setItem("SongN", songName);
            console.log(sessionStorage.getItem("SongN"))
            
            window.location.href = "song-about.aspx?SongN=" + encodeURIComponent(songName);
        
        }

    </script>

    <script src="js/songs-list.js"></script>
    <!--BOOSTRAP Dependencies-->
    <script src="js/bootstrap.bundle.min.js"></script>
    
</asp:Content>
