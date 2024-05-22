using System;

namespace schedularforexam
{
    /// <summary>
    /// Summary description for datefixlogin.
    /// </summary>
    public class datefixlogin : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.TextBox TextBox1;

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
            this.TextBox1.TextChanged += new System.EventHandler(this.TextBox1_TextChanged);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion

        private void TextBox1_TextChanged(object sender, System.EventArgs e)
        {

        }
    }
}
