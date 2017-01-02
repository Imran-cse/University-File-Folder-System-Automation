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
    public partial class DepartmentManagement : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;Initial Catalog=sdppractice;port=3306;User Id=root");
        MySqlCommand cmd;
        MySqlDataReader reader;
        MySqlDataAdapter da;
        String qstr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                departmentGridBind();
                profileGridBind();
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            con.Open();
            qstr = "";

            qstr = "INSERT INTO sdppractice.department(Name)" + "VALUES('" + inputName.Text + "')";
            cmd = new MySqlCommand(qstr, con);
            cmd.ExecuteNonQuery();
            con.Close();

            departmentGridBind();
        }
        protected void departmentGridBind()
        {
            con.Open();
            qstr = "SELECT * FROM sdppractice.department";
            DataTable dt = new DataTable();
            cmd = new MySqlCommand(qstr, con);
            da = new MySqlDataAdapter(cmd);
            da.Fill(dt);

            departmentGridView.DataSource = dt;
            departmentGridView.DataBind();
            con.Close();
        }

        protected void profileGridBind()
        {
            con.Open();
            qstr = "";
            DataTable dt = new DataTable();
            qstr = "SELECT userID, name, experience, qualification, assignedDiscipline FROM sdppractice.profile";
            cmd = new MySqlCommand(qstr, con);
            da = new MySqlDataAdapter(cmd);
            da.Fill(dt);

            profileGridView.DataSource = dt;
            profileGridView.DataBind();
            con.Close();
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gvrow in departmentGridView.Rows)
            {
                var radio_dis = gvrow.FindControl("disciplineRadioButton") as RadioButton;
                var disLableName = gvrow.FindControl("disciplineNameLabel") as Label;
                var disLableId = gvrow.FindControl("disciplineIdLabel") as Label;
                if (radio_dis.Checked)
                {
                    foreach (GridViewRow gvrowProfile in profileGridView.Rows)
                    {
                        var profileIdLabel = gvrowProfile.FindControl("profileIdLabel") as Label;
                        var checkbox_pro = gvrowProfile.FindControl("profileCheckBox") as CheckBox;
                        if (checkbox_pro.Checked)
                        {
                            con.Open();
                            qstr = "UPDATE sdppractice.profile SET assignedDiscipline='" + disLableName.Text + "',department_id='" + disLableId.Text + "' WHERE userID='" + profileIdLabel.Text + "'";
                            cmd = new MySqlCommand(qstr, con);
                            cmd.ExecuteNonQuery();
                            con.Close();

                            departmentGridBind();
                            profileGridBind();
                        }
                    }
                }
            }
        }
    }
}