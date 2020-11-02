<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviewsPage.aspx.cs" Inherits="Movie_Review_Website.ReviewsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="https://fonts.googleapis.com/css2?family=Enriqueta:wght@700&family=Gentium+Book+Basic&family=Itim&family=Red+Hat+Display:wght@900&display=swap" rel="stylesheet">    <link href="https://fonts.googleapis.com/css2?family=Enriqueta:wght@700&family=Gentium+Book+Basic&family=Red+Hat+Display:wght@900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gentium+Book+Basic&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <style>
        #Message{
            font-family: 'Enriqueta', serif;
            font-size:xx-large;
            text-size-adjust:150%;
        }
        .heading{
           color:white;
           font-family: 'Itim', cursive;

          
        }
        #TextBox1{
            border-radius: 3px;
            
            
        }
        .cl
        {
           text-align:center;
            padding-top:4rem;
            padding-bottom:4rem;
        }
    </style>
    <title></title>
</head>
<body>
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
            

        </div>
    </nav>
    <div class="container cl">
      <asp:label font-size="XX-Large" CssClass="text-center " ID="Message" width="100%" runat="server"></asp:label>
        <h2 >Guide Others By Giving Your Personal Views</h2>
    </div>
    <form id="form1" runat="server" >
        <div class="jumbotron-fluid bg-dark" style="height:330px; ">
            <div class="container" style=" justify-content:center;  vertical-align:middle; ">

            
        <div class="text-center heading " style="margin-bottom:2.25rem; padding-top:1.8rem;">
            <h1 style="font-size:60px;" >Add Your Review</h1>

        </div>
        <div class="text-center " style="align-content:center; justify-content:center; margin-bottom:25px;">
             <asp:TextBox ID="TextBox1"  CssClass="form-control" style="margin:auto ; width:350px; " runat="server" Rows="2" TextMode="MultiLine" ></asp:TextBox>
                    

        </div>
       
                        <div class="text-center">
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-outline-danger" style="margin:auto ; width:400px;" OnClick="Button1_Click" Text="SUBMIT" />

                        </div>
                                        <div class="text-center" style="margin-top:1rem; font-size:25px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="**Please write review before submitting" ForeColor="#ffffff"></asp:RequiredFieldValidator>
</div>
          </div>
                </div>
    </form>
</body>
</html>
