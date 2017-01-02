<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SDP_Project.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Profile</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="CustomStyle/carousel.css" rel="stylesheet" />
</head>
<body>
    <form id="profile_form" runat="server">
        <!-- Carousel
    ================================================== -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="first-slide" src="Images/Khulna University-3.jpg" alt="First slide" />
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Khulna University</h1>
                            <p></p>
                            <p><a class="btn btn-lg btn-primary" href="Home.aspx" role="button">Log Out</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide" src="Images/Adommo_bangla.jpg" alt="Second slide" />
                    <div class="container">
                        <div class="carousel-caption">
                            <a href="http://ku.ac.bd" style="color:orangered"><h1>খুলনা বিশ্ববিদ্যালয়</h1></a>
                            <p></p>
                            <p><a class="btn btn-lg btn-primary" href="Home.aspx" role="button">Log Out</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide" src="Images/kotak.jpg" alt="Third slide" />
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Khulna University</h1>
                            <p></p>
                            <p><a class="btn btn-lg btn-primary" href="Home.aspx" role="button">Log Out</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!-- /.carousel -->
        <div>
            <div class="navbar-wrapper">
                <div class="container">

                    <nav class="navbar navbar-inverse navbar-static-top">
                        <div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <!--  <a class="navbar-brand" href="#">Project name</a> -->
                            </div>
                            <div id="navbar" class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="#">Home</a></li>
                                    <li><a href="#about">About</a></li>
                                    <li><a href="#contact">Contact</a></li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="DisciplineList.aspx">Discipline List</a></li>
                                            <li><a href="CreateMail.aspx">Create Mail</a></li>
                                            <li><a href="MailBox.aspx">Mail Box</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>

                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <asp:Table runat="server" CssClass="table table-inverse">
                    <asp:TableRow>
                        <asp:TableCell CssClass="col-lg-4">Name</asp:TableCell>
                        <asp:TableCell CssClass="col-lg-8" ID="nameCell">Username</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="col-lg-4">Qualification</asp:TableCell>
                        <asp:TableCell CssClass="col-lg-8" ID="qualificationCell">qualification</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="col-lg-4">Experience</asp:TableCell>
                        <asp:TableCell CssClass="col-lg-8" ID="experienceCell">experience</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="col-lg-4">Assigned Discipline / Department</asp:TableCell>
                        <asp:TableCell CssClass="col-lg-8" ID="disciplineCell">experience</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="col-lg-4">Designation</asp:TableCell>
                        <asp:TableCell CssClass="col-lg-8" ID="designationCell">experience</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="col-lg-4">Contact</asp:TableCell>
                        <asp:TableCell CssClass="col-lg-8" ID="contactCell">contact</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow >
                        <asp:TableCell CssClass="col-lg-4">Mail</asp:TableCell>
                        <asp:TableCell CssClass="col-lg-8" ID="mailCell">Mail</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <p><a class="btn btn-lg btn-primary" href="#" role="button" data-target="#profileEditModal" data-toggle="modal">Edit Profile</a></p>
            </div>
        </div>

        <div class="modal fade" id="profileEditModal" data-backdrop="static" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Edit Profile</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="nameTextbox">Name</label>
                            <asp:TextBox runat="server" class="form-control" ID="nameTextbox" />
                        </div>
                        <div class="form-group">
                            <label for="qualificationTextbox">Qualification</label>
                            <asp:TextBox class="form-control" ID="qualificationTextbox" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="experienceTextbox">Experience</label>
                            <asp:TextBox runat="server" class="form-control" ID="experienceTextbox" />
                        </div>
                        <div class="form-group">
                            <label for="contactTextBox">Contact</label>
                            <asp:TextBox runat="server" class="form-control" ID="contactTextBox" />
                        </div>
                        <div class="form-group">
                            <label for="mailTextBox">Mail</label>
                            <asp:TextBox runat="server" class="form-control" ID="mailTextBox" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" ID="saveButton" CssClass="btn btn-primary " Text="Save" OnClick="saveButton_click" />
                        <button class="btn btn-primary" id="modalCloseButton" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <div class="row">
            <hr>
            <div class="col-lg-12">
                <div class="col-md-8">
                    <a href="#">Terms of Service</a> | <a href="#">Privacy</a>
                </div>
                <div class="col-md-4">
                    <p class="muted pull-right">© 2016 Khulna University. All rights reserved</p>
                </div>
            </div>
        </div>

    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
