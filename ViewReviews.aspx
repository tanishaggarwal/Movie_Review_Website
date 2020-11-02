<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewReviews.aspx.cs" Inherits="Movie_Review_Website.ViewReviews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://fonts.googleapis.com/css2?family=Gentium+Book+Basic&display=swap" rel="stylesheet">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />

    <style>
        .tstyle
        {
         font-family: 'Enriqueta', serif;
        }
        .poster{
            text-align:right;
        }
        .reviewrow{
            font-family: 'Enriqueta', serif;
            margin-left:10px;
            
            color:#f63d3d;
            width:inherit;
            border-radius:5px;
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
    <form id="form1" runat="server">

        <div class="row mt-3 " style="padding-left:4rem;">

           
       
        <div class="col-4 poster" >
            <asp:Image ID="imgPoster" CssClass="img rounded" runat="server" />
            
  
   
</div>
        <div class="container col-8 text-left" >
        <asp:Repeater ID="Repeater1" runat="server" >
            <HeaderTemplate>
                <h1 class="mb-3 font-weight-light">REVIEWS</h1>
            </HeaderTemplate>
            <ItemTemplate>
                <asp:table runat="server">
                    <asp:TableRow runat="server">
                        <asp:TableCell>
                            <div style="text-decoration:solid" class="tstyle">
                                <asp:label Text="• " CssClass="text-secondary" runat="server" id="Label1"></asp:label>
                        <asp:label Text='<%#Eval("username") %>' runat="server" id="lusername">

                        </asp:label>
                                </div>
                            </asp:TableCell>
</asp:TableRow>
                    <asp:TableRow runat="server" CssClass="ml-1 mb-2  reviewrow">
                         <asp:TableCell>
                        <asp:label Text="  "  runat="server" id="Label2"></asp:label>

                        <asp:label Text='<%#Eval("review") %>'  runat="server" id="lreview">

                        </asp:label>
</asp:TableCell>
                    </asp:TableRow>

                </asp:table>
            </ItemTemplate>
        </asp:Repeater>
            <asp:Label Text="No Reviews Yet" Font-Size="XX-Large"  runat="server" ID="NoReviewslabel"></asp:Label>
        </div>
             </div>
    </form>
</body>
</html>
