using System;
using System.Data.SqlClient;

namespace schedularforexam
{
    /// <summary>
    /// Summary description for app_devp_login.
    /// </summary>
    public class app_devp_login : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Button Button1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
        protected System.Web.UI.WebControls.RegularExpressionValidator RegularExpressionValidator1;
        protected System.Web.UI.WebControls.RegularExpressionValidator RegularExpressionValidator2;
        protected System.Web.UI.WebControls.Label lbluid;
        protected System.Web.UI.WebControls.Label lblpwd;
        protected System.Web.UI.WebControls.TextBox txtUid;
        protected System.Web.UI.WebControls.TextBox txtPwd;
        protected System.Web.UI.WebControls.Label lblIn_uid;
        protected System.Web.UI.WebControls.Label lblIn_pwd;
        protected System.Web.UI.WebControls.Label lbltitle;

        private void Page_Load(object sender, System.EventArgs e)
        {
            // Put user code to initialize the page here
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
            this.txtUid.TextChanged += new System.EventHandler(this.txtUid_TextChanged);
            this.Button1.Click += new System.EventHandler(this.Button1_Click);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion

        private void Button1_Click(object sender, System.EventArgs e)
        {
            //The strings strStr,strStr1 are declared which are used later.
            string strStr = "";
            string strStr1 = "";
            string strConStr = "Server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(strConStr);
            con.Open();
            string comStr = "select *from scheduleforexam_app_devp_tb";
            SqlCommand com = new SqlCommand(comStr, con);
            SqlDataReader reader = com.ExecuteReader();
            //vlidating the user id and password of application developer
            while (reader.Read())
            {
                strStr = reader["userid"].ToString();
                strStr1 = reader["user_pwd"].ToString();
                if (strStr.Equals(txtUid.Text))
                {
                    if (strStr1.Equals(txtPwd.Text))
                    {
                        //Here the current page is redirected to the registration.aspx
                        Response.Redirect("registration.aspx");

                    }
                    else
                    {
                        lblIn_pwd.Visible = true;
                        lblIn_uid.Visible = false;
                    }
                }
                if (!(lblIn_uid.Visible = true))
                    lblIn_uid.Visible = true;
                else
                    lblIn_uid.Visible = false;
            }
            lblIn_uid.Visible = true;
        }

        private void txtUid_TextChanged(object sender, System.EventArgs e)
        {

        }
    }
}
