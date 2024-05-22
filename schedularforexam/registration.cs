using System;
using System.Data.SqlClient;

namespace schedularforexam
{
    /// <summary>
    /// Summary description for registration.
    /// </summary>
    public class registration : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Label Label3;
        protected System.Web.UI.WebControls.Button Button1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator3;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator4;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator5;
        protected System.Web.UI.WebControls.RegularExpressionValidator RegularExpressionValidator1;
        protected System.Web.UI.WebControls.Label lblName;
        protected System.Web.UI.WebControls.TextBox txtName;
        protected System.Web.UI.WebControls.Label lblDob;
        protected System.Web.UI.WebControls.Label lblAddress;
        protected System.Web.UI.WebControls.Label lblQuali;
        protected System.Web.UI.WebControls.Label lblTech;
        protected System.Web.UI.WebControls.Label lblExp;
        protected System.Web.UI.WebControls.Label lblEid;
        protected System.Web.UI.WebControls.Label lblEpwd;
        protected System.Web.UI.WebControls.Label lbltitle;
        protected System.Web.UI.WebControls.TextBox txtPh;
        protected System.Web.UI.WebControls.RegularExpressionValidator RegularExpressionValidator3;
        protected System.Web.UI.WebControls.RangeValidator RangeValidator1;
        protected System.Web.UI.WebControls.TextBox txtDob;
        protected System.Web.UI.WebControls.TextBox txtAdd;
        protected System.Web.UI.WebControls.DropDownList cboQualification;
        protected System.Web.UI.WebControls.DropDownList cboTech;
        protected System.Web.UI.WebControls.DropDownList cboWorkExp;
        protected System.Web.UI.WebControls.TextBox txtExamineeId;
        protected System.Web.UI.WebControls.TextBox txtEpwd;
        protected System.Web.UI.WebControls.RegularExpressionValidator RegularExpressionValidator2;

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
            this.txtPh.TextChanged += new System.EventHandler(this.TextBox3_TextChanged);
            this.Button1.Click += new System.EventHandler(this.Button1_Click);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion

        private void Button1_Click(object sender, System.EventArgs e)
        {//
            string examinee_name, d_o_b, phno, add, quali, tech, workexp, examid, exampwd;
            //The selected values are now transferred to the respective string objectes created for them.
            examinee_name = txtName.Text;
            d_o_b = txtDob.Text.ToString();
            //	txtDob.Text=Calendar1.SelectedDate.ToString();

            phno = txtPh.Text;
            add = txtAdd.Text;
            quali = cboQualification.SelectedValue;
            tech = cboTech.SelectedValue;
            workexp = cboWorkExp.SelectedValue;
            examid = txtExamineeId.Text;
            exampwd = txtEpwd.Text;
            //Here the Session objects are created for the Exam id,Exam password,and the Name
            Session["examid"] = examid;
            Session["exampwd"] = exampwd;
            Session["name"] = examinee_name;
            string conStr = "Server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            // The fetched values are inserted into the scheduleforexam_reg_tb
            string comStr = "insert into scheduleforexam_reg_tb values('" + examinee_name + "','" + Convert.ToDateTime(d_o_b) + "'," + phno + ",'" + add + "','" + quali + "','" + tech + "'," + workexp + ",'" + examid + "','" + exampwd + "')";
            SqlCommand com = new SqlCommand(comStr, con);
            com.ExecuteNonQuery();
            con.Close();
            //Here the current page is redirected to the 4_exampromt.aspx
            Response.Redirect("4_examprompt.aspx");

        }
        // The selected date form the calander is reflected to the text box txtDob
        /*private void Calendar1_SelectionChanged(object sender, System.EventArgs e)
		{
	txtDob.Text=Calendar1.SelectedDate.ToShortDateString();
	}*/

        /*	private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
            {
                Calendar1.Visible=true;
            }*/

        private void TextBox3_TextChanged(object sender, System.EventArgs e)
        {
            //d_o_b=Calendar1.SelectedDate.ToString();

        }

        private void ListBox1_SelectedIndexChanged(object sender, System.EventArgs e)
        {

        }
    }
}
