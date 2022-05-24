using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthManagement
{
    public partial class Create_Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string names, location, email, gender, pass, sql;
            int patientid, mobileno;
            names = Convert.ToString(txtnames.Text);
            location = Convert.ToString(txtlocation.Text);
            email = Convert.ToString(txtemail.Text);
            gender = Convert.ToString(DDLgender.Text);
            patientid = Convert.ToInt32(txtpatientid.Text);
            pass = Convert.ToString(txtcpassword.Text);
            mobileno = Convert.ToInt32(txtmobileno.Text);
            sql = "insert into Patients (patientid,names,email,Mobileno,gender,pass,location) VALUES ('" + patientid + "','" + names + "','" + email + "','" + mobileno + "','" + gender + "','" + pass + "','" + location + "')";
            hdb.conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = hdb.conn;
            cmd.ExecuteNonQuery();
            hdb.conn.Close();
            lblconfirm.Text = "Record inserted successfully";
            lblconfirm.ForeColor = System.Drawing.Color.Green;
            Response.Redirect("~/Login.aspx");
        }   
    }
}