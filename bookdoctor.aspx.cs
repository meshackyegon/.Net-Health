using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthManagement
{
    public partial class bookdoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (Session["login successfulll"] != null && (bool)Session["login successfulll"){ Response.Write("You are logged in");
            }
            else { Response.Write("You are logged in"); }*/ }

        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            string medicaltype, ttime,sql;
            medicaltype = Convert.ToString(DDLdoctor.Text);
            ttime = Convert.ToString(DDLtime.Text);
            DateTime date = Convert.ToDateTime(txtdate.Text);
            sql = "insert into bookdoctor(type,time,date) VALUES('" + medicaltype + "','" + ttime + "','" + date + "')";
            hdb.conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = hdb.conn;
            cmd.ExecuteNonQuery();
            hdb.conn.Close();
            lblconfirm.Text = "Doctor booked successfullynj";
            lblconfirm.ForeColor = System.Drawing.Color.Green;
        }
    }
}