using System;
using System.Data.SqlClient;
namespace schedularforexam
{
    /// <summary>
    /// Summary description for addcenter.
    /// </summary>
    public class addcenter : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Button Button1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator3;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator4;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator5;
        protected System.Web.UI.WebControls.TextBox txtCcode;
        protected System.Web.UI.WebControls.TextBox txtCname;
        protected System.Web.UI.WebControls.Label lblCcode;
        protected System.Web.UI.WebControls.Label lblCname;
        protected System.Web.UI.WebControls.Label lblCity;
        protected System.Web.UI.WebControls.Label lblSeats;
        protected System.Web.UI.WebControls.Label lblAdd;
        protected System.Web.UI.WebControls.TextBox txtCity;
        protected System.Web.UI.WebControls.TextBox txtSeats;
        protected System.Web.UI.WebControls.TextBox txtAdd;
        protected System.Web.UI.WebControls.Label lbltitle;
        protected System.Web.UI.WebControls.Label Label1;
        protected System.Web.UI.WebControls.RegularExpressionValidator RegularExpressionValidator1;

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
            //connecting to the database schedularforexam
            string strConstr = "server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(strConstr);
            con.Open();
            //inserting the values fetched from the webform to center table.
            string strCom = "insert into  scheduleforexam_center_tb values('" + txtCcode.Text + "','" + txtCname.Text + "','" + txtCity.Text + "','" + txtSeats.Text + "','" + txtAdd.Text + "')";
            SqlCommand cmd = new SqlCommand(strCom, con);
            cmd.ExecuteNonQuery();
            //redircting the current page to the addcenter.aspx page.
            //	Response.Redirect("addcenter.aspx");
            Label1.Visible = true;
            txtAdd.Text = "";
            txtCcode.Text = "";
            txtCity.Text = "";
            txtCname.Text = "";
            txtSeats.Text = "";



        }
    }
}
