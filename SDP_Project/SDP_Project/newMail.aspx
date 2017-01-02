<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newMail.aspx.cs" Inherits="SDP_Project.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>New Mail</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="CustomStyle/carousel.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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
                            <p><a class="btn btn-lg btn-primary" href="#" role="button" data-target="#loginModal" data-toggle="modal">Log In</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide" src="Images/Adommo_bangla.jpg" alt="Second slide" />
                    <div class="container">
                        <div class="carousel-caption">
                            <a href="http://ku.ac.bd" style="color:gold"><h1>খুলনা বিশ্ববিদ্যালয়</h1></a>
                            
                            <p><a class="btn btn-lg btn-primary" href="#" role="button" data-target="#loginModal" data-toggle="modal">Log In</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide" src="Images/kotak.jpg" alt="Third slide" />
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Khulna University</h1>
                            
                            <p><a class="btn btn-lg btn-primary" href="#" role="button" data-target="#loginModal" data-toggle="modal">Log In</a></p>
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
                                    <li><a href="About.aspx">About</a></li>
                                    <li><a href="Contact.aspx">Contact</a></li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="Profile.aspx">Profile</a></li>
                                            <li><a href="MailBox.aspx">Mail Box</a></li>
                                            <li><a href="CreateMail.aspx">Create Mail</a></li>
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
        <div class="container">
            <div class="form-group">
                <label for="fromTextBox">From</label>
                <asp:TextBox class="form-control" ID="fromTextBox" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="subjectTextbox">Subject</label>
                <asp:TextBox class="form-control" ID="subjectTextBox" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="MessageTextBox">Message</label>
                <asp:TextBox class="form-control" Font-Names="Lucida Calligraphy" BackColor="#ff99ff" ID="MessageTextBox" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
            </div>
            <br />
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Attachment"></asp:Label>

                <asp:GridView CssClass="table table-hover" RowStyle-Font-Names="Lucida Calligraphy" HeaderStyle-Font-Names="comic sans ms" RowStyle-ForeColor="White" HeaderStyle-Font-Size="Large" AlternatingRowStyle-BackColor="#333300" RowStyle-BackColor="#999966" HeaderStyle-CssClass="navbar-inverse" HeaderStyle-ForeColor="Gold" ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText="No files uploaded">
                    <Columns>
                        <asp:BoundField DataField="Text" HeaderText="File Name" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkDownload" ForeColor="WhiteSmoke" Text="Download" CommandArgument='<%# Eval("Value") %>' runat="server" OnClick="DownloadFile"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <asp:Button CssClass="btn btn-group btn-success" ID="approvalButton" runat="server" Text="Approve" OnClick="approvalButton_Click" />
            <asp:Button ID="rejectButton" CssClass="btn btn-group btn-danger" runat="server" Text="Reject" OnClick="rejectButton_Click" />
            <asp:Button ID="replyButton" CssClass="btn btn-primary" runat="server" Text="Reply >" OnClick="replyButton_Click" />
            <asp:Button ID="forwardButton" CssClass="btn btn-primary" runat="server" Text="Forward >>" OnClick="forwardButton_Click" />
            <a href="filethread.aspx">Observe This File Thread</a>
        </div>
     <div class="container">
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
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
