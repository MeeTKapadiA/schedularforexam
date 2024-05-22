using System;
using System.Data.SqlClient;
namespace schedularforexam
{
    /// <summary>
    /// Summary description for exam_add.
    /// </summary>
    public class exam_add : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Button Button1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
        protected System.Web.UI.WebControls.TextBox txtcid;
        protected System.Web.UI.WebControls.Label lblcid;
        protected System.Web.UI.WebControls.Label lblexam;
        protected System.Web.UI.WebControls.Label lbltitle;
        protected System.Web.UI.WebControls.Label Label1;
        protected System.Web.UI.WebControls.TextBox txtexam;

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
        {   //connecting to the database schedularforexam.

            string strConStr = "server=.;database= schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(strConStr);
            con.Open();
            //inserting the values into scheduleforexam_exam_tb table 
            String strcomStr = "insert into scheduleforexam_exam_tb values('" + txtcid.Text + "','" + txtexam.Text + "')";
            SqlCommand com = new SqlCommand(strcomStr, con);
            com.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            txtcid.Text = "";
            txtexam.Text = "";
            //redirecting the  current page to exam_add.aspx
            //Response.Redirect("exam_add.aspx");

        }
    }
}
