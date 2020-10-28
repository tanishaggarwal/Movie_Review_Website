<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Movie_Review_Website.HomePage" %>

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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="#">
            <img src="images/logo.jpg" width="30" height="30" class="d-inline-block align-top rounded-circle" alt="" loading="lazy" />
            MovieInfo 
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
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
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" />
                <asp:Button ID="ButtonSearch" runat="server" Text="Search" OnClick="Search" CssClass="btn btn-outline-success my-2 my-sm-0"/>
                <asp:Button ID="ButtonAccount" runat="server" Text="Update Account" OnClick="Account" CssClass="btn btn-outline-info ml-2" />
                <asp:Button ID="ButtonDelete" runat="server" Text="Delete Account" OnClick="Delete" CssClass="btn btn-outline-danger ml-2" />
            </form>

        </div>
    </nav>
    <div class="container-fluid mt-2">
        <div class="jumbotron text-center" style="background-image: url('images/logo.jpg'); background-size: contain">
            <h1 class="display-4 text-white">Welcome to MovieInfo</h1>
            <p class="lead text-white">Here You will find information about all latest Movies and trilling Web Series</p>
            <hr class="my-4 bg-secondary">
            <p class="text-white">Not Only Search about them, Write your own thoughts about them</p>
            <a class="btn btn-outline-success btn-lg" href="#" role="button">Get Started</a>
        </div>
    </div>
    <div class="container-fluid my-2">
        <h1 class="text-center">Our Services
        </h1>
        <div class="row mt-3 justify-content-center">
            <div class="card col-md-3 mx-2 text-center border border-dark rounded bg-light" style="width: 18rem;">
                <img src="images/movies.jpg" class="card-img-top mt-3" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Latest Movies</h5>
                    <p class="card-text">Search information about any Hollywood,Bollywood movie.You name it and we have it.</p>
                </div>
            </div>
            <div class="card col-md-3 mx-2 text-center border border-dark rounded bg-light" style="width: 18rem;">
                <img src="images/series.jpg" class="card-img-top mt-3" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Latest Web Series</h5>
                    <p class="card-text">Search for any OTT platform based Web Series.You name it and we have it.</p>
                </div>
            </div>
            <div class="card col-md-3 mx-2 text-center border border-dark rounded bg-light" style="width: 18rem;">
                <img src="images/review.jpg" class="card-img-top mt-3" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Write Reviews</h5>
                    <p class="card-text">We let our users give thoughts about any movie, series by writing their reviews</p>
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
