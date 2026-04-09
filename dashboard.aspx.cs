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
    public partial class dashboard : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\stud_admin.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewStudent.Visible=false;
            GridViewCourse.Visible=false;
            GridViewSub.Visible=false;
            GridViewDept.Visible=false;
            conn.Open();
        }

        protected void btnDispStud_Click(object sender, EventArgs e)
        {
            string qry_stud = "SELECT * FROM stud_add";
            SqlDataAdapter stud = new SqlDataAdapter(qry_stud, conn);
            DataTable stud_tab = new DataTable();

            stud.Fill(stud_tab);

            GridViewStudent.DataSource = stud_tab;
            GridViewStudent.DataBind();

            GridViewStudent.Visible = true;
        }
        protected void btnDispCourse_Click(object sender, EventArgs e)
        {
            string qry_crs = "SELECT * FROM course";
            SqlDataAdapter crs = new SqlDataAdapter(qry_crs, conn);
            DataTable crs_tab = new DataTable();

            crs.Fill(crs_tab);

            GridViewCourse.DataSource = crs_tab;
            GridViewCourse.DataBind();

            GridViewCourse.Visible = true;
        }

        protected void btnDispSub_Click(object sender, EventArgs e)
        {
            string qry_sub = "SELECT * FROM subject";
            SqlDataAdapter sub = new SqlDataAdapter(qry_sub,conn);
            DataTable sub_tab = new DataTable();

            sub.Fill(sub_tab);

            GridViewSub.DataSource = sub_tab;
            GridViewSub.DataBind();

            GridViewSub.Visible = true;
        }

        protected void btnDispDept_Click(object sender, EventArgs e)
        {
            string qry_dept = "select * from dept";
            SqlDataAdapter dept = new SqlDataAdapter(qry_dept, conn);
            DataTable dept_tab = new DataTable();

            dept.Fill(dept_tab);

            GridViewDept.DataSource = dept_tab; 
            GridViewDept.DataBind();

            GridViewDept.Visible = true;
        }
    }
}
