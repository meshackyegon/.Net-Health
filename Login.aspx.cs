using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            patientsTableAdapters.PatientsTableAdapter pta = new patientsTableAdapters.PatientsTableAdapter();
            //create data table
            DataTable dt = new DataTable();
            //fill datatable
            int patientid = Convert.ToInt32(txtpatientid.Text);
            string Password = txtpassword.Text;
            dt = pta.GetData(patientid, Password);
            if (dt.Rows.Count >= 1)
            {
               lblconfirm.Text = "login successfull";
               lblconfirm.ForeColor = System.Drawing.Color.Green;
                //create a session
                Session["patientid"] = dt.Rows[0]["patientid"].ToString();
                Response.Redirect("~/bookservice.aspx");
                Response.Redirect("~/bookdoctor.aspx");
                Response.Redirect("~/requestdrugs.aspx");
            }
            else
            {
                lblconfirm.Text = "login Failure";
                lblconfirm.ForeColor = System.Drawing.Color.Red;
               Response.Redirect("~/Create_Account.aspx");
            }
        }
    }
}