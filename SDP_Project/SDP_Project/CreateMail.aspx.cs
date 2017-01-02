using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDP_Project
{
    public partial class CreateMail : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;Initial Catalog=sdppractice;port=3306;User Id=root");
        MySqlCommand cmd;
        String qstr;
        String fileName;
        protected void Page_Load(object sender, EventArgs e)
        {
         
           if(!IsPostBack)
            {
                FromTextBox.Text = (String)(Session["userName"]);
                if((String)(Session["toUser"])!=null)
                {
                    ToTextBox.Text = (String)(Session["toUser"]);
                }
                fileName = (String)(Session["filename"]);
                subjectTextBox.Text = (String)(Session["subject"]);
                messageTextBox.Text = (String)(Session["message"]);
                StatusLabel.Text = fileName;
            }
            fileName = (String)(Session["filename"]);
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            con.Open();
            qstr = "";
            if(FileUploadControl.HasFile)
            {
                try
                {
                    if (FileUploadControl.PostedFile.ContentLength < 9002400)
                    {
                        fileName = Path.GetFileName(FileUploadControl.FileName);
                        FileUploadControl.SaveAs(Server.MapPath("~/datastorage/") + fileName);
                        fileName = "~/datastorage/" + fileName;
                        StatusLabel.Text = "File Uploaded";
                    }
                    else
                        StatusLabel.Text = "The file has to be less than 900kb!";
                }
                catch(Exception ex)
                {
                    StatusLabel.Text = "File couldn't be uploaded";
                }
            }
            Response.Write(fileName);
            qstr = "INSERT INTO sdppractice.fileTransfer(fromUser, toUser, subject, message, address, checkMessage, approval) VALUES('" + FromTextBox.Text +
                "','" + ToTextBox.Text + "','"+subjectTextBox.Text+"','" + messageTextBox.Text + "','" + fileName + "','unchecked','notapproved')";
            cmd = new MySqlCommand(qstr, con);
            cmd.ExecuteReader();
            con.Close();

            Response.Redirect("MailBox.aspx", false);
        }
    }
}