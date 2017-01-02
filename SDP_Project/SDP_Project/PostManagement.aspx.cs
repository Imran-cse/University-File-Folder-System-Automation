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
    public partial class PostManagement : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;Initial Catalog=sdppractice;port=3306;User Id=root");
        MySqlCommand cmd;
        MySqlDataAdapter da;
        MySqlDataReader reader;
        String qstr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                postBind();
            }
        }

        protected void postBind()
        {
            con.Open();
            qstr = "SELECT * FROM sdppractice.post";
            DataTable dt = new DataTable();
            cmd = new MySqlCommand(qstr, con);
            da = new MySqlDataAdapter(cmd);
            da.Fill(dt);

            postGridView.DataSource = dt;
            postGridView.DataBind();
            con.Close();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            con.Open();
            qstr = "INSERT INTO sdppractice.post(postName) VALUES('" + inputName.Text + "')";
            cmd = new MySqlCommand(qstr, con);

            cmd.ExecuteNonQuery();
            con.Close();
            postBind();   
        }
    }
}