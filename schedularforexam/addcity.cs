using System;
using System.Data.SqlClient;

namespace schedularforexam
{
    /// <summary>
    /// Summary description for addcity.
    /// </summary>
    public class addcity : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Button Button1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
        protected System.Web.UI.WebControls.TextBox txtccode;
        protected System.Web.UI.WebControls.TextBox txtcname;
        protected System.Web.UI.WebControls.Label lblccode;
        protected System.Web.UI.WebControls.Label lblcname;
        protected System.Web.UI.WebControls.TextBox txtcenters;
        protected System.Web.UI.WebControls.Label lblcenters;
        protected System.Web.UI.WebControls.Label lbltitle;
        protected System.Web.UI.WebControls.Label Label1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator3;

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
            //connecting to the database schedularfor exam
            string strCon = "server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            //inserting the values to the city table
            string strCmd = "insert into scheduleforexam_city_tb values('" + txtccode.Text + "','" + txtcname.Text + "'," + txtcenters.Text + ")";
            SqlCommand com = new SqlCommand(strCmd, con);

            com.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            txtccode.Text = "";
            txtcname.Text = "";
            txtcenters.Text = "";

            //redirecting the current page to addcity.aspx page.
            //Response.Redirect("addcity.aspx");

        }
    }
}
