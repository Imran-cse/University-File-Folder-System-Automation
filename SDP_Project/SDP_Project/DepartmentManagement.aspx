<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepartmentManagement.aspx.cs" Inherits="SDP_Project.DepartmentManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Department Management</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="CustomStyle/carousel.css" rel="stylesheet" />
    <script language="javascript" type="text/javascript">
        function SelectedRadiobutton(radio) {
            var rdBtn = document.getElementById(radio.id);
            var rdBtnList = document.getElementsByTagName("input");
            for (i = 0; i < rdBtnList.length; i++) {
                if (rdBtnList[i].type == "radio" && rdBtnList[i].id != rdBtn.id) {
                    rdBtnList[i].checked = false;
                }
            }
        }
    </script>
</head>
<body>
    <form id="home_form" runat="server">
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
                                            <li><a href="DisciplineManagement.aspx">Discipline Management</a></li>
                                            <li><a href="DisciplineList.aspx">Discipline List</a></li>
                                            <li><a href="CreateMail.aspx">Create Mail</a></li>
                                            <li><a href="MailBox.aspx">MailBox</a></li>
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
            <p><a class="btn btn-lg btn-primary" href="#" role="button" data-target="#departmentAddModal" data-toggle="modal">Add Department</a></p>
            <br />
            <br />
            <p>List of Departments</p>
           <asp:GridView CssClass="table table-hover" RowStyle-Font-Names="Lucida Calligraphy" HeaderStyle-Font-Names="comic sans ms" RowStyle-ForeColor="White" HeaderStyle-Font-Size="Large" AlternatingRowStyle-BackColor="#333300" RowStyle-BackColor="#999966" HeaderStyle-CssClass="navbar-inverse" HeaderStyle-ForeColor="Gold" ID="departmentGridView" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="Radio Button">
                        <ItemTemplate>
                            <asp:RadioButton ID="disciplineRadioButton" runat="server" OnClick="javascript:SelectedRadiobutton(this)" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="disciplineIdLabel" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Department Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="disciplineNameTextBox" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="disciplineNameLabel" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                </Columns>
           </asp:GridView>
            <br />
            <asp:GridView CssClass="table table-hover" RowStyle-Font-Names="Lucida Calligraphy" HeaderStyle-Font-Names="comic sans ms" RowStyle-ForeColor="White" HeaderStyle-Font-Size="Large" AlternatingRowStyle-BackColor="#333300" RowStyle-BackColor="#999966" HeaderStyle-CssClass="navbar-inverse" HeaderStyle-ForeColor="Gold" ID="profileGridView" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="CheckBox">
                        <ItemTemplate>
                            <asp:CheckBox ID="profileCheckBox" runat="server" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="profileIdTextBox" runat="server" Text='<%# Bind("userID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="profileIdLabel" runat="server" Text='<%# Bind("userID") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="profileNameTextBox" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="profileNameLabel" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Experience">
                        <EditItemTemplate>
                            <asp:TextBox ID="profileExperienceTextBox" runat="server" Text='<%# Bind("experience") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="profileExperienceLabel" runat="server" Text='<%# Bind("experience") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Qualification">
                        <EditItemTemplate>
                            <asp:TextBox ID="profileQualificationTextBox" runat="server" Text='<%# Bind("qualification") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="profileQualificationLabel" runat="server" Text='<%# Bind("qualification") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Assigned Discipline/Department">
                        <EditItemTemplate>
                            <asp:TextBox ID="assignedDisciplineTextBox" runat="server" Text='<%# Bind("assignedDiscipline") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="assignedDisciplineLabel" runat="server" Text='<%# Bind("assignedDiscipline") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:Button runat="server" ID="updateButton" CssClass="btn btn-primary " Text="Update" OnClick="updateButton_Click" />
        </div>
               <div class="modal fade" id="departmentAddModal" data-backdrop="static" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Add New Department</h4>
                    </div>
                    <div class="modal-body">
                        <asp:Label runat="server" ID="validityLabel" Visible="false">*Invalid Username or Password</asp:Label>
                        <div class="form-group">
                            <label for="inputName">Department Name</label>
                            <asp:TextBox  runat="server" class="form-control" ID="inputName" placeholder="Enter Department Name" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" ID="saveButton" CssClass="btn btn-primary " Text="Save" OnClick="saveButton_Click" />
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
