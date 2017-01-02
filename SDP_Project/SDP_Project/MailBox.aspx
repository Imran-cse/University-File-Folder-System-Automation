<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailBox.aspx.cs" Inherits="SDP_Project.MailBox" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>MailBox</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="CustomStyle/carousel.css" rel="stylesheet" />
</head>
<body>
    <form id="mailbox_form" runat="server">
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
                                    <li class="active"><a href="#">Home</a></li>
                                    <li><a href="About.aspx">About</a></li>
                                    <li><a href="Contact.aspx">Contact</a></li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="Profile.aspx">Profile</a></li>
                                            <li><a href="Discipline.aspx">Discipline</a></li>
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
        <div class="form-control table tabble-striped" style="height:600px">
            <p>New Mail</p>
            <br />
            <div>
                <asp:GridView CssClass="table table-hover" RowStyle-Font-Names="Lucida Calligraphy" HeaderStyle-Font-Names="comic sans ms" RowStyle-ForeColor="White" HeaderStyle-Font-Size="Large" AlternatingRowStyle-BackColor="#333300" RowStyle-BackColor="#999966" HeaderStyle-CssClass="navbar-inverse" HeaderStyle-ForeColor="Gold" ID="NewMailGridview" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="NewMailGridview_SelectedIndexChanged">
                    <Columns>
                         <asp:BoundField DataField="fromuser"  HeaderText="From User" />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HiddenField runat="server" ID="hf1" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="subject" HeaderText="Subject" />
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Message" HeaderText="Message" />
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="address" HeaderText="Attachment" />
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="checkMessage" HeaderText="Status" />
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>    
                     
                    </Columns>
                </asp:GridView>
                
        </div>
        <p>Old Mail</p>
            <br />
            <div>
                <asp:GridView CssClass="table table-hover" RowStyle-Font-Names="Lucida Calligraphy" HeaderStyle-Font-Names="comic sans ms" RowStyle-ForeColor="White" HeaderStyle-Font-Size="Large" AlternatingRowStyle-BackColor="#333300" RowStyle-BackColor="#999966" HeaderStyle-CssClass="navbar-inverse" HeaderStyle-ForeColor="Gold" ID="OldMailGridView" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="OldMailGridView_SelectedIndexChanged">
                    <Columns>
                         <asp:BoundField DataField="fromuser"  HeaderText="From User" />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HiddenField runat="server" ID="hf2" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="subject" HeaderText="Subject" />
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Message" HeaderText="Message" />
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="address" HeaderText="Attachment" />
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:BoundField DataField="checkMessage" HeaderText="Status" />
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                         
                     
                    </Columns>
                </asp:GridView>
                
        </div>
    </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
