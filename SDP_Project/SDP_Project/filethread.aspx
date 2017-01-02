<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="filethread.aspx.cs" Inherits="SDP_Project.filethread" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p style="font-family:'Lucida Calligraphy'; font-size:large; color:darkblue">Current File Thread</p>
            <br />
            <div>
                <asp:GridView CssClass="table table-hover" RowStyle-Font-Names="Lucida Calligraphy" HeaderStyle-Font-Names="comic sans ms" RowStyle-ForeColor="White" HeaderStyle-Font-Size="Large" AlternatingRowStyle-BackColor="#333300" RowStyle-BackColor="#999966" HeaderStyle-CssClass="navbar-inverse" HeaderStyle-ForeColor="Gold" ID="FileThreadGridView" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" OnSelectedIndexChanged="FileThreadGridView_SelectedIndexChanged">
                    <Columns>
                         <asp:BoundField DataField="fromuser"  HeaderText="From" />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HiddenField runat="server" ID="hf1" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="toUser" HeaderText="To" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:BoundField DataField="Message" HeaderText="Message" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="address" HeaderText="Attachment" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:BoundField DataField="approval" HeaderText="Approval Status" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HiddenField runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                   
                     
                    </Columns>
                </asp:GridView>
                
        </div>
    </form>
</body>
</html>
