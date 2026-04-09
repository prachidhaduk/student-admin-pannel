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
    public partial class subject : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ASP_PROJECT\student_admin_pannel\App_Data\stud_admin.mdf;Integrated Security=True");
                                                 
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void btnSubjectAdd_Click(object sender, EventArgs e)
        {
            string crs_name = drop_crs.Text;
            string sub_name = txt_sub_nm.Text;
            string credit = txt_credit.Text;

            string sub_qry = "INSERT INTO subject (crs_name,sub_name,credit) VALUES ('" + crs_name + "' , '" + sub_name + "' , '" + credit + "')";
            SqlCommand cmd = new SqlCommand(sub_qry, conn);

            cmd.ExecuteNonQuery();
        }
    }
}