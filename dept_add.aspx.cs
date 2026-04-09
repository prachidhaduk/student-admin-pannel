using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace student_admin_pannel
{
    public partial class dept_add : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\stud_admin.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void btnDeptAdd_Click(object sender, EventArgs e)
        {
            string dept_name = txt_dept.Text;

            string dept_qry = "INSERT INTO dept (dept_name) VALUES ('"+dept_name+"')";

            SqlCommand cmd = new SqlCommand(dept_qry, conn);
            cmd.ExecuteNonQuery();
        }
    }
}