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

    public partial class MailBox : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;Initial Catalog=sdppractice;port=3306;User Id=root");
        MySqlCommand cmd;
        MySqlDataAdapter da;
        String qstr, username;
        protected void Page_Load(object sender, EventArgs e)
        {
            username = (String)Session["userName"];

            if (!this.IsPostBack)
            {
                bind();
            }
        }

        

        protected void NewMailGridview_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = ((NewMailGridview.Rows[NewMailGridview.SelectedIndex] as GridViewRow).FindControl("hf1") as HiddenField).Value;
            Session["uid"] = id;
            Response.Write(id);
            Response.Redirect("~/newMail.aspx?id=" + id, true);
        }

        protected void OldMailGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = ((OldMailGridView.Rows[OldMailGridView.SelectedIndex] as GridViewRow).FindControl("hf2") as HiddenField).Value;
            Session["uid"] = id;
            Response.Write(id);
            Response.Redirect("~/newMail.aspx?id=" + id, true);
        }

        protected void bind()
        {
            con.Open();

            
            qstr = "SELECT * FROM sdppractice.filetransfer WHERE checkMessage='unchecked' and toUser='"+username+"'";
            cmd = new MySqlCommand(qstr, con);

            da = new MySqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);
            NewMailGridview.DataSource = dt;
            NewMailGridview.DataBind();

            qstr = "";
            qstr = "SELECT * FROM sdppractice.filetransfer WHERE checkMessage='checked' and toUser ='"+username+"'";
            cmd = new MySqlCommand(qstr, con);

            da = new MySqlDataAdapter(cmd);
            DataTable db = new DataTable();

            da.Fill(db);
            OldMailGridView.DataSource = db;
            OldMailGridView.DataBind();

            con.Close();
        }

    }
}
    
