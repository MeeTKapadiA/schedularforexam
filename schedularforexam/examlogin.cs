using System;
using System.Data.SqlClient;
namespace schedularforexam
{
    /// <summary>
    /// Summary description for examlogin.
    /// </summary>
    public class examlogin : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
        protected System.Web.UI.WebControls.Label lblTitle;
        protected System.Web.UI.WebControls.Label lblInvalidEpwd;
        protected System.Web.UI.WebControls.Label lblInvalidEid;
        protected System.Web.UI.WebControls.Label lblEid;
        protected System.Web.UI.WebControls.TextBox txtEid;
        protected System.Web.UI.WebControls.Label lblEpwd;
        protected System.Web.UI.WebControls.TextBox txtEpwd;
        protected System.Web.UI.WebControls.Button Button1;

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
            this.Button1.Click += new System.EventHandler(this.Button1_Click);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion

        private void Button1_Click(object sender, System.EventArgs e)
        {

            // Here the connection is established to the schedularforexam database
            string str = "";
            string str1 = "";
            string conStr = "Server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            String comStr = "select pk_reg_examinee_id,examinee_pwd from scheduleforexam_reg_tb";
            SqlCommand com = new SqlCommand(comStr, con);
            SqlDataReader reader = com.ExecuteReader();

            //The examinee id and the examinee password is validated
            while (reader.Read())
            {
                str = reader["pk_reg_examinee_id"].ToString();
                str1 = reader["examinee_pwd"].ToString();

                if (str.Equals(txtEid.Text))
                {
                    if (str1.Equals(txtEpwd.Text))
                    {

                        Response.Redirect("fixingdate.aspx");
                    }
                    else
                    {
                        lblInvalidEpwd.Visible = true;
                        lblInvalidEid.Visible = false;
                    }
                }
                if (!(lblInvalidEid.Visible = false))

                    lblInvalidEid.Visible = true;
                else
                    lblInvalidEid.Visible = false;


            }//if(!(lblInvalidEpwd.Visible=false))
             //{
             //		 Label5.Visible=true;}
        }
    }
}
