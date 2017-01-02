using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDP_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;Initial Catalog=sdppractice;port=3306;User Id=root");
        MySqlCommand cmd;
        MySqlDataReader reader;
        String qstr,userName,password;
        String name, qualification, contact, mail, experience, post, assignedDiscipline;

        protected void adminButton_Click(object sender, EventArgs e)
        {
            con.Open();
            qstr = "SELECT * FROM sdppractice.admin WHERE userName='" + inputUsername.Text + "' AND password='" + inputPassword.Text + "'";
            cmd = new MySqlCommand(qstr, con);
            reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                Response.BufferOutput = true;
                Response.Redirect("ProfileManagement.aspx", false);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
   
        }
        protected void loginButton_Click(object sender, EventArgs e)
        {
            con.Open();
            qstr = "";

            qstr = "SELECT * FROM sdppractice.profile WHERE userName='" + inputUsername.Text + "' AND password='" + inputPassword.Text + "'";
            cmd = new MySqlCommand(qstr, con);
            reader = cmd.ExecuteReader();

            name = "";
            qualification = "";           
            contact = "";
            mail = "";
            experience = "";
            userName = "";
            password = "";
            assignedDiscipline = "";
            post = "";
            while (reader.HasRows && reader.Read())
            {
                name = reader.GetString(reader.GetOrdinal("name"));
                qualification = reader.GetString(reader.GetOrdinal("qualification"));
                experience = reader.GetString(reader.GetOrdinal("experience"));                
                contact = reader.GetString(reader.GetOrdinal("contact"));
                mail = reader.GetString(reader.GetOrdinal("mail"));
                assignedDiscipline = reader.GetString(reader.GetOrdinal("assignedDiscipline"));
                post = reader.GetString(reader.GetOrdinal("post"));

                userName = reader.GetString(reader.GetOrdinal("userName"));
                password = reader.GetString(reader.GetOrdinal("password"));
            }

            if (reader.HasRows)
            {
                Session["name"] = name;
                Session["qualification"] = qualification;
                Session["experience"] = experience;                
                Session["contact"] = contact;
                Session["mail"] = mail;
                Session["assignedDiscipline"] = assignedDiscipline;
                Session["post"] = post;

                Session["userName"] = userName;
                Session["password"] = password;

                Response.BufferOutput = true;
                Response.Redirect("Profile.aspx", false);
            }
            else
            {
                validityLabel.Visible = true;
            }

            reader.Close();
            con.Close();
        }
    }
}