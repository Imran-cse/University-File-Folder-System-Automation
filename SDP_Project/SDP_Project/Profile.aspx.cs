using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDP_Project
{
    public partial class LogIn : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;Initial Catalog=sdppractice;port=3306;User Id=root");
        MySqlCommand cmd;
        MySqlDataReader reader;

        String qstr,name, qualification, experience, contact, mail,userName,password, post, assignedDiscipline;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Load_Data();
                name = (String)(Session["name"]);
                nameCell.Text = name;

                qualification = (String)(Session["qualification"]);
                qualificationCell.Text = qualification;

                experience = (String)(Session["experience"]);
                experienceCell.Text = experience;

                assignedDiscipline = (String)(Session["assignedDiscipline"]);
                disciplineCell.Text = assignedDiscipline;

                post = (String)(Session["post"]);
                designationCell.Text = post;

                contact = (String)(Session["contact"]);
                contactCell.Text = contact;

                mail = (String)(Session["mail"]);
                mailCell.Text = mail;
            
                nameTextbox.Text = name;
                qualificationTextbox.Text = qualification;
                experienceTextbox.Text = experience;
                contactTextBox.Text = contact;
                mailTextBox.Text = mail;
            }
        }
        
        protected void saveButton_click(object sender, EventArgs e)
        {

            userName = (String)(Session["userName"]);
            password = (String)(Session["password"]);
            con.Open();
            qstr = "";

            qstr = "UPDATE sdppractice.profile SET name='"+nameTextbox.Text
                +"', qualification='"+qualificationTextbox.Text+"',experience='"+experienceTextbox.Text
                +"', contact='"+contactTextBox.Text+"', mail='"+mailTextBox.Text+"' WHERE userName='"+userName+"' AND password='"+password+"'";

            cmd = new MySqlCommand(qstr, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Load_Data();
        }

        private void Load_Data()
        {
            con.Open();
            qstr = "";

            qstr = "SELECT * FROM sdppractice.profile WHERE userName='" + userName + "' AND password='" + password + "'";
            cmd = new MySqlCommand(qstr, con);
            reader = cmd.ExecuteReader();

            while(reader.HasRows && reader.Read())
            {
                nameCell.Text = reader.GetString(reader.GetOrdinal("name"));
                qualificationCell.Text = reader.GetString(reader.GetOrdinal("qualification"));
                experienceCell.Text = reader.GetString(reader.GetOrdinal("experience"));
                disciplineCell.Text = reader.GetString(reader.GetOrdinal("assignedDiscipline"));
                designationCell.Text = reader.GetString(reader.GetOrdinal("post"));
                contactCell.Text = reader.GetString(reader.GetOrdinal("contact"));
                mailCell.Text = reader.GetString(reader.GetOrdinal("mail"));
            }

            reader.Close();
            con.Close();
        }
    }
}