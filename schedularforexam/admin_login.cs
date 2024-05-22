using System;
using System.Data.SqlClient;

namespace schedularforexam
{
    /// <summary>
    /// Summary description for admin_login.
    /// </summary>
    public class admin_login : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
        protected System.Web.UI.WebControls.RegularExpressionValidator RegularExpressionValidator1;
        protected System.Web.UI.WebControls.CompareValidator CompareValidator1;
        protected System.Web.UI.WebControls.Label Label5;
        protected System.Web.UI.WebControls.TextBox txtlogin;
        protected System.Web.UI.WebControls.TextBox txtpwd;
        protected System.Web.UI.WebControls.Label lbllogin;
        protected System.Web.UI.WebControls.Label lblpwd;
        protected System.Web.UI.WebControls.Label lblheading;
        protected System.Web.UI.WebControls.Button AdminSubmit;

        private void Page_Load(object sender, System.EventArgs e)
        {

        }

        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            //
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            //
            InitializeComponent();
            base.OnInit(e);
        }

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.AdminSubmit.Click += new System.EventHandler(this.Button1_Click);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion
        //On clicking the AdminSubmit button the Adminlogin and the Adminpwd are validated.

        private void Button1_Click(object sender, System.EventArgs e)
        {

            string strStr = " ";
            string strStr1 = " ";
            //connecting to the database
            string conStr = "Server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            //fetching data from database using datareader
            String comStr = "select *from scheduleforexam_admin_login_tb";
            SqlCommand com = new SqlCommand(comStr, con);
            SqlDataReader reader = com.ExecuteReader();
            //validating the admin_id and adminpwd
            while (reader.Read())
            {
                strStr = reader["admin_id"].ToString();
                strStr1 = reader["admin_pwd"].ToString();

                if (strStr.Equals(txtlogin.Text))
                {
                    if (strStr1.Equals(txtpwd.Text))
                    {
                        //here the page is redirected to the admin_frame.htm page
                        Response.Redirect("admin_frame.htm");
                    }
                    else
                    {
                        Label5.Visible = true;
                    }
                }

            }
        }
    }
}

