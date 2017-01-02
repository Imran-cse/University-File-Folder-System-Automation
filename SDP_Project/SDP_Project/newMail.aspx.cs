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
    public partial class WebForm2 : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;Initial Catalog=sdppractice;port=3306;User Id=root");
        MySqlDataReader reader;
        MySqlCommand cmd;
        string queryStr, filename, username, from, to, msg, subject, id,approvalCheck;

        protected void forwardButton_Click(object sender, EventArgs e)
        {
            Session["toUser"] = "";
            Session["subject"] = subject;
            Session["filename"] = filename;
            Session["message"] = msg;
            Response.Redirect("CreateMail.aspx", false);
        }

        protected void replyButton_Click(object sender, EventArgs e)
        {
            Session["toUser"] = from;
            Response.Redirect("CreateMail.aspx", false);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
            id = (String)Session["uid"];
            con.Open();
            username = (String)Session["username"];
            queryStr = "SELECT * FROM sdppractice.filetransfer where id='" + id + "'";

            cmd = new MySqlCommand(queryStr, con);

            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                from = reader.GetString(reader.GetOrdinal("fromuser"));
                to = reader.GetString(reader.GetOrdinal("touser"));
                msg = reader.GetString(reader.GetOrdinal("message"));
                filename = reader.GetString(reader.GetOrdinal("address"));
                subject = reader.GetString(reader.GetOrdinal("subject"));
                id = reader.GetString(reader.GetOrdinal("id"));
                approvalCheck = reader.GetString(reader.GetOrdinal("approval"));
            }

            fromTextBox.Text = from;
            subjectTextBox.Text = subject;
            MessageTextBox.Text = msg;

            reader.Close();
            con.Close();

            SetMessageStatus();
            if (IsPostBack || !IsPostBack)
            {
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/datastorage/"));
                List<ListItem> files = new List<ListItem>();

                files.Add(new ListItem(filename));

                GridView1.DataSource = files;
                GridView1.DataBind();
            }

        }
        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();

        }
        protected void SetMessageStatus()
        {
            con.Open();
            queryStr = "update sdppractice.filetransfer SET  checkMessage ='checked' where id='" + id + "'";
            cmd = new MySqlCommand(queryStr, con);
            reader = cmd.ExecuteReader();

            reader.Close();
            con.Close();
        }
        protected void rejectButton_Click(object sender, EventArgs e)
        {
            con.Open();
            queryStr = "update sdppractice.filetransfer SET  approval ='rejected' where id='"+id+"'";
            cmd = new MySqlCommand(queryStr, con);
            reader = cmd.ExecuteReader();
            reader.Close();

            con.Close();
        }

        protected void approvalButton_Click(object sender, EventArgs e)
        {
            con.Open();
            queryStr = "update sdppractice.filetransfer SET  approval ='approved' where id='" + id + "'";
            cmd = new MySqlCommand(queryStr, con);

            reader = cmd.ExecuteReader();
            reader.Close();

            con.Close();
        }

    }
}