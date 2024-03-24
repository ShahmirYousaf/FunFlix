<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="movies.aspx.cs" Inherits="DB_Project.movies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/style-movies.css">
    <link rel="stylesheet" href="css/style-movieHelper.css">
    <link rel="stylesheet" href="css/movie-list-2.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container3" style="padding-top: 2.5%; margin-left: 0.5%; margin-right: 0.5%;">
        <div class="container-fluid mt-5 section-dark" style="border-radius: 10px; background: transparent; min-height: 70vh; backdrop-filter: blur(4px) contrast(40%); border: 2px solid #ff1e00;">
            <div class="d-md-flex">

                <div class="col my-auto text-center text-md" style="padding-top: 1.75%;">
                    <h2><span style="color: #24098E; font-weight: 800;">AVENGERS ENDGAME </span>
                    </h2>
                        <p style="color: #fffcf2; font-weight: 500;" class=" mt-3 my-auto">
                            
                           In the aftermath of the cataclysmic events brought about by the formidable Thanos, 
                            an indomitable warlord whose diabolical scheme resulted in the eradication of fifty
                            percent of the universe, the <span
                                style="color: #24098E; font-weight: 650;">Avengers </span> must once again congregate and unite their formidable 
                            prowess in order to galvanize their decimated allies and reestablish the delicate balance of 
                            cosmic equilibrium that was disrupted by the tyrannical machinations of their foe.
                        </p>
                    <div class="mt-4 row text-center text-md">
                        
                            <asp:button onclick="mvBtn_Click" ID="mvBtn" runat="server" Text="Watch Now" type="button" class="btn btn-outline-primary"
                                style="border-radius: 12%; border-bottom-width:medium; border-top-width: medium; border-right-width: medium; border-left-width: medium;">
                                </asp:button>
                       
                       
                    </div>
                </div>

                <div class="col my-auto text-center text-md" align="right">

                    <img src="pictures/avengers.jpg" width="80%" style="margin-left: 21.4%;">
                </div>
            </div>
        </div>
    </div>

    

    <div class="container1-1">
        <div class="container1">
            <div class="container2">

                <h1>ACTION</h1>

                <asp:DataList runat="server" CssClass="MovieDataList" ID="MovieDataList1" RepeatDirection="Horizontal" ItemStyle-CssClass="MovieItemTemplate">
                    <ItemTemplate>

                        <a class="movie-btn" onclick="setSession('<%# Eval("MoviePic") %>')">                           
                                <div class="moviecontainer">
                                    <asp:Image ImageUrl='<%#Eval("MoviePic","Movie-Pics/{0}") %>' runat="server" CssClass="movie-image" />
                                </div>                                 
                        </a>
                       

                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>



        <div class="container1">
            <div class="container2">

                <h1>COMEDY</h1>

                <asp:DataList runat="server" CssClass="MovieDataList" ID="MovieDataList2" RepeatDirection="Horizontal" ItemStyle-CssClass="MovieItemTemplate">
                    <ItemTemplate>

                      <a class="movie-btn" onclick="setSession('<%# Eval("MoviePic") %>')">
                                <div class="moviecontainer">
                                    <asp:Image ImageUrl='<%#Eval("MoviePic","Movie-Pics/{0}") %>' runat="server" CssClass="movie-image" />
                                </div> 
                        </a>

                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>



        <div class="container1">
            <div class="container2">

                <h1>DRAMA</h1>

                <asp:DataList runat="server" CssClass="MovieDataList" ID="MovieDataList3" RepeatDirection="Horizontal" ItemStyle-CssClass="MovieItemTemplate">
                    <ItemTemplate>

                        <a class="movie-btn" onclick="setSession('<%# Eval("MoviePic") %>')">
                                <div class="moviecontainer">
                                    <asp:Image ImageUrl='<%#Eval("MoviePic","Movie-Pics/{0}") %>' runat="server" CssClass="movie-image" />
                                </div> 
                        </a>

                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>



        <div class="container1">
            <div class="container2">

                <h1>HORROR</h1>

                <asp:DataList runat="server" CssClass="MovieDataList" ID="MovieDataList4" RepeatDirection="Horizontal" ItemStyle-CssClass="MovieItemTemplate">
                    <ItemTemplate>

                       <a class="movie-btn" onclick="setSession('<%# Eval("MoviePic") %>')">
                                <div class="moviecontainer">
                                    <asp:Image ImageUrl='<%#Eval("MoviePic","Movie-Pics/{0}") %>' runat="server" CssClass="movie-image" />
                                </div> 
                        </a>

                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>


        <div class="container1">
            <div class="container2">

                <h1>ROMANCE</h1>

                <asp:DataList runat="server" CssClass="MovieDataList" ID="MovieDataList5" RepeatDirection="Horizontal" ItemStyle-CssClass="MovieItemTemplate">
                    <ItemTemplate>

                        <a class="movie-btn" onclick="setSession('<%# Eval("MoviePic") %>')">
                                <div class="moviecontainer">
                                    <asp:Image ImageUrl='<%#Eval("MoviePic","Movie-Pics/{0}") %>' runat="server" CssClass="movie-image" />
                                </div> 
                        </a>

                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        
        const setSession = (moviePic) =>
        {
            sessionStorage.setItem("movie", moviePic);
            console.log(sessionStorage.getItem("movie"))
            /* window.location.href = "movie-about.aspx";*/
            window.location.href = "movie-about.aspx?moviePic=" + encodeURIComponent(moviePic);
        
        }

        
       
    </script>

    
</asp:Content>
