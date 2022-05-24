using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthManagement
{
    public partial class bookservice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          /* if (Session["login successfulll"] != null && (bool)Session["login successfulll"){
                Response.Write("You are logged in");
            }
            else { Response.Write("You are logged in"); }*/
        }

        protected void btnbookservice_Click(object sender, EventArgs e)
        {
           string service, confirm,ttime,sql;
            service = Convert.ToString(DDLmedical.Text);
            confirm = Convert.ToString(DDLconfirmation.Text);
            ttime = Convert.ToString(DDLtime.Text);
            DateTime date = Convert.ToDateTime(txtdate.Text);
            sql = "insert into bookservice( service,time,confirm,date) VALUES('" + service + "','" + ttime + "','" + confirm + "','" + date + "')";
            hdb.conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = hdb.conn;
            cmd.ExecuteNonQuery();
            hdb.conn.Close();
            lblconfirm.Text = "service booked successfully";
            lblconfirm.ForeColor = System.Drawing.Color.Green;
            Response.Redirect("~/bookdoctor.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}