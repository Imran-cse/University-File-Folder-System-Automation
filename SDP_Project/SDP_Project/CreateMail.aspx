<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateMail.aspx.cs" Inherits="SDP_Project.CreateMail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Create Mail</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="CustomStyle/carousel.css" rel="stylesheet" />
</head>
<body>
    <form id="createMail_form" runat="server">
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
                            <a href="http://ku.ac.bd" style="color: orangered">
                                <h1>খুলনা বিশ্ববিদ্যালয়</h1>
                            </a>

                            <p><a class="btn btn-lg btn-primary" href="Home.aspx" role="button">Log Out</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide" src="Images/kotak.jpg" alt="Third slide" />
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Khulna University</h1>

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
                                    <li class="active"><a href="Home.aspx">Home</a></li>
                                    <li><a href="About.aspx">About</a></li>
                                    <li><a href="Contact.aspx">Contact</a></li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="Profile.aspx">Profile</a></li>
                                            <li><a href="MailBox.aspx">Mail Box</a></li>
                                            <li><a href="DisciplineList.aspx">Discipline List</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>

                </div>
            </div>
        </div>
        <div class="container input-group">
            <p>From:</p>
            <asp:TextBox runat="server" ID="FromTextBox" CssClass="form-control" placeholder="Enter your user name" />
            <asp:RequiredFieldValidator runat="server" ID="FromtextboxRequiredValidtor" ControlToValidate="FromTextBox" ErrorMessage="Please enter valid username" CssClass="danger" />

        </div>
        <div class="container input-group">
            <p>To::</p>
            <asp:TextBox runat="server" ID="ToTextBox" CssClass="form-control" placeholder="Enter receiver user name"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="TotextboxRequiredFieldValidator" ControlToValidate="ToTextBox" ErrorMessage="Please enter valid username" CssClass="danger" />

        </div>
        <div class="container input-group">
            <p>Subject:</p>
            <asp:TextBox runat="server" ID="subjectTextBox" CssClass="form-control" placeholder="Enter Subject"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="subjectRequiredFieldValidator" ControlToValidate="subjectTextBox" ErrorMessage="Please enter valid username" CssClass="danger" />

        </div>
        <div class="container input-group">
            <p>Type Your Message here</p>
            <asp:TextBox runat="server" Height="286px" ID="messageTextBox" CssClass="form-control" TextMode="MultiLine" />
        </div>
        <br />
        <br />

        <div class="container dl-horizontal">
            <asp:Label runat="server" ID="StatusLabel" Text="No File Uploaded" />
            <asp:FileUpload runat="server" ID="FileUploadControl" />
            <br />
            <asp:Button CssClass="btn bg-primary" runat="server" ID="UploadButton" Text="Send" OnClick="UploadButton_Click" />
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
