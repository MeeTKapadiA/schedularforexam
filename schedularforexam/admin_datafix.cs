using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
namespace schedularforexam
{
    /// <summary>
    /// Summary description for admin_datafix.
    /// </summary>
    public class admin_datafix : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Button Button1;
        protected System.Web.UI.WebControls.ImageButton ImageButton1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
        protected System.Web.UI.WebControls.Label lblExam;
        protected System.Web.UI.WebControls.Label lblDate;
        protected System.Web.UI.WebControls.Label lblTime;
        protected System.Web.UI.WebControls.TextBox txtTime;
        protected System.Web.UI.WebControls.TextBox txtSeats;
        protected System.Web.UI.WebControls.Label lblSeats;
        protected System.Web.UI.WebControls.Label lblCid;
        protected System.Web.UI.WebControls.DropDownList cboCid;
        protected System.Web.UI.WebControls.DropDownList cboExam;
        protected System.Web.UI.WebControls.Label lblCity;
        protected System.Web.UI.WebControls.Label lblCenter;
        protected System.Web.UI.WebControls.DropDownList cboCity;
        protected System.Web.UI.WebControls.DropDownList cboCenter;
        protected System.Web.UI.WebControls.Calendar Cal;
        protected System.Web.UI.WebControls.Label lblTitle;
        protected System.Web.UI.WebControls.TextBox txtDate;
        protected System.Web.UI.WebControls.Label lblcal;
        protected System.Web.UI.WebControls.Label Label1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator3;


        private void Page_Load(object sender, System.EventArgs e)
        {

            //connecting to the database schedularforexam
            string strConstr = "server=.;database= schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(strConstr);
            //fetching the values from exam table and inserting them into comboboxes of the webform using data adapter and dataset
            string strCmd = "select distinct pk_exam_tb_cert_id from scheduleforexam_exam_tb";
            SqlCommand com = new SqlCommand(strCmd, con);
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet examds = new DataSet();
            da.Fill(examds, "scheduleforexam_exam_tb");
            cboCid.DataSource = examds;
            cboCid.DataMember = "scheduleforexam_exam_tb";
            cboCid.DataTextField = "pk_exam_tb_cert_id";
            if (!Page.IsPostBack)
            {
                cboCid.DataBind();
                cboCid.Items.Insert(0, "select");
                cboCid.SelectedIndex = 0;

                //dropdownState_SelectedIndexChanged(sender, e);
            }
            con.Close();
            //connecting again to the database
            string strConstr1 = "server=.;database= schedularforexam;uid=sa;pwd=sa";
            SqlConnection con1 = new SqlConnection(strConstr1);
            string strCmd1 = "select distinct pk_city_name from scheduleforexam_city_tb";
            SqlCommand com1 = new SqlCommand(strCmd1, con1);
            con1.Open();
            //	da = new SqlDataAdapter(com);
            SqlDataAdapter da3 = new SqlDataAdapter(com1);
            DataSet cityds = new DataSet();
            da3.Fill(cityds, "scheduleforexam_city_tb");
            cboCity.DataSource = cityds;
            cboCity.DataMember = "scheduleforexam_city_tb";
            cboCity.DataTextField = "pk_city_name";
            if (!Page.IsPostBack)
            {//binding the data to the combo box
                cboCity.DataBind();
                cboCity.Items.Insert(0, "select");
                cboCity.SelectedIndex = 0;

                //dropdownState_SelectedIndexChanged(sender, e);
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
            this.Button1.Click += new System.EventHandler(this.Button1_Click);
            this.cboCid.SelectedIndexChanged += new System.EventHandler(this.cboCid_SelectedIndexChanged);
            this.cboExam.SelectedIndexChanged += new System.EventHandler(this.cboExam_SelectedIndexChanged);
            this.cboCity.SelectedIndexChanged += new System.EventHandler(this.cboCity_SelectedIndexChanged);
            this.Cal.SelectionChanged += new System.EventHandler(this.Cal_SelectionChanged);
            this.ImageButton1.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton1_Click);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion

        string conStr = "server=.;database=schedularforexam;uid=sa;pwd=sa";



        private void Button1_Click(object sender, System.EventArgs e)
        {
            string strDate;
            strDate = Cal.SelectedDate.ToShortDateString();
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            //inserting the values selected from webform to the admin table
            string comStr = "insert into scheduleforexam_admin_tb values('" + cboCid.SelectedValue + "','" + cboExam.SelectedValue + "','" + Convert.ToDateTime(strDate) + "'," + txtTime.Text + "," + txtSeats.Text + ",'" + cboCity.SelectedValue + "','" + cboCenter.SelectedValue + "')";
            SqlCommand com = new SqlCommand(comStr, con);
            com.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            //	Response.Redirect("admin_datafix.aspx");
            //RequiredFieldValidator2.Validate=true;
        }

        private void cboExam_SelectedIndexChanged(object sender, System.EventArgs e)
        {


        }
        //on changing  of the selected value in dropdown list cboCid ,respective values are reflected into dropdownlist cboExam 

        private void cboCid_SelectedIndexChanged(object sender, System.EventArgs e)
        {


            string examid = cboCid.SelectedValue;

            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            string comstr = "select exam_name from scheduleforexam_exam_tb where pk_exam_tb_cert_id ='" + examid + "'";
            SqlCommand com = new SqlCommand(comstr, con);
            SqlDataAdapter da1 = new SqlDataAdapter(com);
            DataSet examds1 = new DataSet();
            da1.Fill(examds1, "scheduleforexam_exam_tb");
            cboExam.DataSource = examds1;
            cboExam.DataMember = "scheduleforexam_exam_tb";
            cboExam.DataTextField = "exam_name";
            cboExam.DataBind();

        }


        //	//on changing  of the selected value in dropdown list cboCity ,respective values are reflected into dropdownlist cbocenter

        private void cboCity_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            string pk_city_name = cboCity.SelectedValue;

            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            string comstr = "select distinct center.center_name from scheduleforexam_center_tb as center where center.fk_scheduleforexam_center_tb_scheduleforexam_city_tb_city='" + pk_city_name + "'";
            SqlCommand com = new SqlCommand(comstr, con);
            SqlDataAdapter da2 = new SqlDataAdapter(com);
            DataSet centerds = new DataSet();
            da2.Fill(centerds, "scheduleforexam_center_tb");
            cboCenter.DataSource = centerds;
            cboCenter.DataMember = "scheduleforexam_center_tb";
            cboCenter.DataTextField = "center_name";
            cboCenter.DataBind();
            cboCenter.Items.Insert(0, "select");
            cboCenter.SelectedIndex = 0;


        }
        //on clicking of the image button calender is made visible
        private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Cal.Visible = true;
        }
        //on selecting date from calender, it is transferred into the textbox txtDate

        private void Cal_SelectionChanged(object sender, System.EventArgs e)
        {
            if (Cal.SelectedDate < Cal.TodaysDate)
            {
                lblcal.Visible = true;
            }
            else
            {
                lblcal.Visible = false;
                txtDate.Text = Cal.SelectedDate.ToShortDateString();
            }
        }

    }
}
