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
    public partial class course_add : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\stud_admin.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void btnCourseAdd_Click(object sender, EventArgs e)
        {
            string crs_name = txt_course_nm.Text;
            string cre_duration = txt_duration.Text;

            string crs_qry = "INSERT INTO course (crs_name,cre_duration) VALUES ('"+crs_name+"' , '"+cre_duration+"')";
            SqlCommand cmd = new SqlCommand(crs_qry, conn);

            cmd.ExecuteNonQuery();
        }
    }
}