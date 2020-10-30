<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="Movie_Review_Website.SearchResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <title></title>
</head>
<body class="bg-light">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="HomePage.aspx">
            <img src="images/logo.jpg" width="30" height="30" class="d-inline-block align-top rounded-circle" alt="" loading="lazy" />
            MovieInfo 
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="HomePage.aspx">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact Us</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0" runat="server">
                <asp:TextBox ID="tbSearch" runat="server" Width="150px" CssClass="form-control mr-sm-2" placeholder="Search Here" />
                <asp:Button ID="ButtonSearch" runat="server" Text="Search" OnClick="Search" CssClass="btn btn-outline-success my-2 my-sm-0" />
            </form>

        </div>
    </nav>

    <div class="container my-5 border border-dark rounded cloudy-knoxville-gradient" style="padding-bottom:15px">
        <div class="container-fluid">
            <asp:Label ID="tbTitle" runat="server" CssClass="display-3"/>
        </div>
    
    <div class="row mt-3">
        <div class="container-fluid col-4 text-center">
            <asp:Image ID="imgPoster" CssClass="img-fluid rounded" runat="server" />
        </div>
        <div class="container-fluid col-8">
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">Release Date : </span>
                <asp:Label ID="lRelease" runat="server" Font-Size="18px" />
            </div>
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">Running Time : </span>
                <asp:Label ID="lRunningTime" runat="server" Font-Size="18px" />
            </div>
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">Genre : </span>
                <asp:Label ID="lGenre" runat="server" Font-Size="18px" />
            </div>
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">Director : </span>
                <asp:Label ID="LDirector" runat="server" Font-Size="18px" />
            </div>
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">Actors : </span>
                <asp:Label ID="lActors" runat="server" Font-Size="18px" />
            </div>
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">Plot : </span>
                <asp:Label ID="lPlot" runat="server" Font-Size="18px" />
            </div>
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">IMDB Rating : </span>
                <asp:Label ID="lRating" runat="server" Font-Size="18px" Font-Bold="true" />
            </div>
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">IMDB Votes : </span>
                <asp:Label ID="lVotes" runat="server" Font-Size="18px" />
            </div>
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">Language : </span>
                <asp:Label ID="lLanguage" runat="server" Font-Size="18px" />
            </div>
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">Type : </span>
                <asp:Label ID="lType" runat="server" Font-Size="18px" />
            </div>
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">Country : </span>
                <asp:Label ID="lCountry" runat="server" Font-Size="18px" />
            </div>
            <div style="font-family: sans-serif; font-size: 18px" class="mt-1">
                <span style="font-weight: bold">Awards : </span>
                <asp:Label ID="lAwards" runat="server" Font-Size="18px" />
            </div>
        </div>
    </div>
    </div>

    <!-- Footer -->
    <footer class="page-footer font-small">

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3 bg-dark text-white">
            © 2020 Copyright:
    <a href="HomePage.aspx">MovieInfo.com</a>
        </div>
        <!-- Copyright -->

    </footer>
    <!-- Footer -->

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
