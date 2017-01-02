using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDP_Project
{
    public partial class Management : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;Initial Catalog=sdppractice;port=3306;User Id=root");
        MySqlCommand cmd;
        String qstr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gridBind();
            }
        }

        protected void gridBind()
        {
            con.Open();
            qstr = "SELECT userID,userName,name,qualification,experience,contact,mail FROM sdppractice.profile";
            DataTable dt = new DataTable();
            cmd = new MySqlCommand(qstr, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);

            profileGrid.DataSource = dt;
            profileGrid.DataBind();
            con.Close();
        }

        protected void profileGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            profileGrid.PageIndex = e.NewPageIndex;
            gridBind();
        }

        protected void profileGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            profileGrid.EditIndex = -1;
            gridBind();
        }

        protected void profileGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)profileGrid.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            con.Open();
            cmd = new MySqlCommand("DELETE FROM sdppractice.profile where userID='" + Convert.ToInt32(profileGrid.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            gridBind();
        }

        protected void profileGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            profileGrid.EditIndex = e.NewEditIndex;
            gridBind();
        }

        protected void profileGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //int userid = Convert.ToInt32(profileGrid.DataKeys[e.RowIndex].Value.ToString());
            //GridViewRow row = (GridViewRow)profileGrid.Rows[e.RowIndex];
            Label id = profileGrid.Rows[e.RowIndex].FindControl("idLabel") as Label;
            int userid = Convert.ToInt32(id.Text);
            //TextBox txtname=(TextBox)gr.cell[].control[];
            TextBox textName = profileGrid.Rows[e.RowIndex].FindControl("nameTextBox") as TextBox;
            TextBox textqualification = profileGrid.Rows[e.RowIndex].FindControl("qualificationTextBox") as TextBox;
            TextBox textexperience = profileGrid.Rows[e.RowIndex].FindControl("experienceTextBox") as TextBox;
            TextBox textcontact = profileGrid.Rows[e.RowIndex].FindControl("contactTextBox") as TextBox;
            TextBox textmail = profileGrid.Rows[e.RowIndex].FindControl("mailTextBox") as TextBox;
            //TextBox textadd = (TextBox)row.FindControl("txtadd");
            //TextBox textc = (TextBox)row.FindControl("txtc");
            con.Open();
            //SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);
            cmd = new MySqlCommand("UPDATE sdppractice.profile SET name='" + textName.Text + "',qualification='" + textqualification.Text + "',experience='" + textexperience.Text +
              "',contact='"+textcontact.Text + "',mail='"+textmail.Text + "' WHERE userID='"+userid.ToString()+"'", con);
            try
            {
                cmd.ExecuteNonQuery();
            }catch
            {
                Response.Write("xxx");
            }
                
            con.Close();
            profileGrid.EditIndex = -1;
            gridBind();
            //GridView1.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            con.Open();
            qstr = "";

            qstr = "INSERT INTO sdppractice.profile(userName, name, qualification, experience, post, contact, mail, password)" +
                "VALUES('" + modal_userNameTextBox.Text + "','"+ modal_nameTextBox.Text +"','"+modal_qualificationTextBox.Text+"','"
                +modal_experienceTextBox.Text+"','"+ modal_postTextBox.Text+"','"+modal_contactTextBox.Text+"','"
                +modal_mailTextBox.Text+"','"+modal_passwordTextBox.Text+"')";
            cmd = new MySqlCommand(qstr, con);
            cmd.ExecuteNonQuery();
            con.Close();

            gridBind();
        }
    }
}