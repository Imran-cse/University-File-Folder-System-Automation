<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileManagement.aspx.cs" Inherits="SDP_Project.Management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Profile Management</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="CustomStyle/carousel.css" rel="stylesheet" />
</head>
<body>
    <form id="management_form" runat="server">
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
                            <p><a class="btn btn-lg btn-primary" href="Home.aspx" role="button">Logout</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide" src="Images/Adommo_bangla.jpg" alt="Second slide" />
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Khulna University</h1>
                            <p></p>
                            <p><a class="btn btn-lg btn-primary" href="Home.aspx" role="button">Logout</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide" src="Images/kotak.jpg" alt="Third slide" />
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Khulna University</h1>
                            <p></p>
                            <p><a class="btn btn-lg btn-primary" href="Home.aspx" role="button">Logout</a></p>
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
                                            <li><a href="DisciplineManagement.aspx">Discipline Management</a></li>
                                            <li><a href="DisciplineList.aspx">Discipline List</a></li>
                                            <li><a href="DepartmentManagement.aspx">Department Mangement</a></li>
                                            <li><a href="#">Create Mail</a></li>
                                            <li><a href="#">One more separated link</a></li>
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
            <asp:GridView CssClass="table table-hover" RowStyle-Font-Names="Lucida Calligraphy" HeaderStyle-Font-Names="comic sans ms"
                 RowStyle-ForeColor="White" HeaderStyle-Font-Size="Large" AlternatingRowStyle-BackColor="#333300" RowStyle-BackColor="#999966"
                 HeaderStyle-CssClass="navbar-inverse" HeaderStyle-ForeColor="Gold"
                 EditRowStyle-BackColor="#333300" EditRowStyle-ForeColor="Black"
                 ID="profileGrid" runat="server" AutoGenerateColumns="False"
                 DataKeyNames="userID" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True"
                 OnPageIndexChanging="profileGrid_PageIndexChanging" OnRowCancelingEdit="profileGrid_RowCancelingEdit"
                 OnRowDeleting="profileGrid_RowDeleting" OnRowEditing="profileGrid_RowEditing"
                 OnRowUpdating="profileGrid_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="User ID">
                        <ItemTemplate>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Bind("userID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="userNameTextBox" runat="server" Text='<%# Bind("userName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="userNameLabel" runat="server" Text='<%# Bind("userName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Qualification">
                        <EditItemTemplate>
                            <asp:TextBox ID="qualificationTextBox" runat="server" Text='<%# Bind("qualification") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="qualificationLabel" runat="server" Text='<%# Bind("qualification") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Experience">
                        <EditItemTemplate>
                            <asp:TextBox ID="experienceTextBox" runat="server" Text='<%# Bind("experience") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="experienceLabel" runat="server" Text='<%# Bind("experience") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact">
                        <EditItemTemplate>
                            <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="contactLabel" runat="server" Text='<%# Bind("contact") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mail">
                        <EditItemTemplate>
                            <asp:TextBox ID="mailTextBox" runat="server" Text='<%# Bind("mail") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="mailLabel" runat="server" Text='<%# Bind("mail") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <hr />
        <p><a class="btn btn-lg btn-primary" href="#" role="button" data-target="#profileAddModal" data-toggle="modal">Add Profile</a></p>
        </div>
        

        <div class="modal fade" id="profileAddModal" data-backdrop="static" tabindex="-1" >
            <div class="modal-dialog">
                <div class="modal-content" style="background-color:lightgray">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">New Profile</h4>
                    </div>
                    <div class="modal-body">
                        <asp:Label runat="server" ID="validityLabel" Visible="false">*Invalid Username or Password</asp:Label>
                        <div class="form-group">
                            <label for="modal_userNameTextBox">Username</label>
                            <asp:TextBox  runat="server" class="form-control" ID="modal_userNameTextBox" placeholder="Enter Username" />
                        </div>
                        <div class="form-group">
                            <label for="modal_nameTextBox">Name</label>
                            <asp:TextBox runat="server" class="form-control" ID="modal_nameTextBox" placeholder="Enter Name" />
                        </div>
                        <div class="form-group">
                            <label for="modal_qualificationTextBox">Qualification</label>
                            <asp:TextBox runat="server" class="form-control" ID="modal_qualificationTextBox" placeholder="Enter Qualification" />
                        </div>
                        <div class="form-group">
                            <label for="modal_experienceTextBox">Experience</label>
                            <asp:TextBox runat="server" class="form-control" ID="modal_experienceTextBox" placeholder="Enter Experiences" />
                        </div>
                        <div class="form-group">
                            <label for="modal_runningCoursesTextBox">Designation</label>
                            <asp:TextBox runat="server" class="form-control" ID="modal_postTextBox" placeholder="Enter Running Courses" />
                        </div>
                        
                        <div class="form-group">
                            <label for="modal_contactTextBox">Contact</label>
                            <asp:TextBox runat="server" class="form-control" ID="modal_contactTextBox" placeholder="Enter Contact" />
                        </div>
                        <div class="form-group">
                            <label for="modal_mailTextBox">Mail</label>
                            <asp:TextBox runat="server" class="form-control" ID="modal_mailTextBox" placeholder="Enter Mail" />
                        </div>
                        <div class="form-group">
                            <label for="modal_passwordTextBox">Password</label>
                            <asp:TextBox class="form-control" type="password" ID="modal_passwordTextBox" placeholder="Enter Password" runat="server" />
                        </div>

                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" ID="saveButton" CssClass="btn btn-primary" OnClick="saveButton_Click" Text="Save" />
                        <button class="btn btn-primary" id="modalCloseButton" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
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
