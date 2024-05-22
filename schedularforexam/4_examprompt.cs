using System;

namespace schedularforexam
{
    /// <summary>
    /// Summary description for _4_examprompt.
    /// </summary>
    public class _4_examprompt : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Label Label1;
        protected System.Web.UI.WebControls.Label Label2;
        protected System.Web.UI.WebControls.TextBox TextBox1;
        protected System.Web.UI.WebControls.Label Label3;
        protected System.Web.UI.WebControls.Label Label4;
        protected System.Web.UI.WebControls.TextBox TextBox2;
        protected System.Web.UI.WebControls.Label Label5;
        protected System.Web.UI.WebControls.Label Label6;
        protected System.Web.UI.WebControls.Label Label7;
        protected System.Web.UI.WebControls.Label Label8;
        protected System.Web.UI.WebControls.ImageButton ImageButton1;
        protected System.Web.UI.WebControls.TextBox TextBox3;

        private void Page_Load(object sender, System.EventArgs e)
        {
            if (Session["name"] != null && Session["examid"] != null && Session["exampwd"] != null)
            {
                string name = Session["name"].ToString();
                string examid = Session["examid"].ToString();
                string exampwd = Session["exampwd"].ToString();

                Label6.Text = name;
                Label7.Text = examid;
                Label8.Text = exampwd;
            }
            else
            {
                // Handle the case when session variables are not set
                Label6.Text = "Name not found";
                Label7.Text = "Exam ID not found";
                Label8.Text = "Exam Password not found";
            }
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
            if (this.ImageButton1 != null)
            {
                this.ImageButton1.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton1_Click);
            }
            this.Load += new System.EventHandler(this.Page_Load);
        }
        #endregion

        private void TextBox1_TextChanged(object sender, System.EventArgs e)
        {
            // Implementation for TextBox1_TextChanged if needed
        }

        private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("Logout.htm");
        }
    }
}
