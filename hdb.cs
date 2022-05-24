using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HealthManagement
{
    public class hdb
    {
        public static SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\health\HealthManagement\App_Data\Health.mdf;Integrated Security=True");
    }
}