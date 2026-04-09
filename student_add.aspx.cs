using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace student_admin_pannel
{

    public partial class student_add : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\stud_admin.mdf;Integrated Security=True");
                                                
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();    
        }

        protected void btnStudentAdd_Click(object sender, EventArgs e)
        {
            string name = txt_nm.Text;
            string mobile_no = txt_mobile.Text;
            string course = drop_course.Text;

            string stud_qry = "INSERT INTO stud_add (name,mobile_no,course) VALUES ('"+name+"' , '"+mobile_no+"' , '"+course+"')";
            SqlCommand cmd = new SqlCommand(stud_qry, conn);

            cmd.ExecuteNonQuery();


        }
    }
}