using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
namespace schedularforexam
{
    /// <summary>
    /// Summary description for fixingdate.
    /// </summary>
    public class fixingdate : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.DropDownList DropDownList4;
        protected System.Web.UI.WebControls.DropDownList DropDownList5;
        protected System.Web.UI.WebControls.Button Button1;
        protected System.Web.UI.WebControls.Label lblCertExam;
        protected System.Web.UI.WebControls.Label lblCity;
        protected System.Web.UI.WebControls.Label lblCenter;
        protected System.Web.UI.WebControls.Label lblAvbdate;
        protected System.Web.UI.WebControls.Label lblExamtime;
        protected System.Web.UI.WebControls.Label lblErrcity;
        protected System.Web.UI.WebControls.Label lblErrcenter;
        protected System.Web.UI.WebControls.Label lblErrdate;
        protected System.Web.UI.WebControls.Label lblErrtime;
        protected System.Web.UI.WebControls.DropDownList cboCE;
        protected System.Web.UI.WebControls.DropDownList cboCity;
        protected System.Web.UI.WebControls.DropDownList cboCenter;
        protected System.Web.UI.WebControls.Label lblTitle;

        private void Page_Load(object sender, System.EventArgs e)
        {//The Connection is made to the database schedularforexam.
            string constr = "server=.;database= schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(constr);
            //The Certification exam is selected form the schedularforexam_admin_td
            string cmd = "select distinct certification_exam from scheduleforexam_admin_tb";
            SqlCommand com = new SqlCommand(cmd, con);
            con.Open();
            //	da = new SqlDataAdapter(com);
            //The data adapteris used here
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet examds = new DataSet();
            da.Fill(examds, "scheduleforexam_admin_tb");
            cboCE.DataSource = examds;
            cboCE.DataMember = "scheduleforexam_admin_tb";
            cboCE.DataTextField = "certification_exam";
            if (!Page.IsPostBack)
            {
                cboCE.DataBind();

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
            this.cboCE.SelectedIndexChanged += new System.EventHandler(this.cboCE_SelectedIndexChanged);
            this.cboCity.SelectedIndexChanged += new System.EventHandler(this.cboCity_SelectedIndexChanged);
            this.cboCenter.SelectedIndexChanged += new System.EventHandler(this.cboCenter_SelectedIndexChanged);
            this.DropDownList4.SelectedIndexChanged += new System.EventHandler(this.DropDownList4_SelectedIndexChanged);
            this.DropDownList5.SelectedIndexChanged += new System.EventHandler(this.DropDownList5_SelectedIndexChanged);
            this.Button1.Click += new System.EventHandler(this.Button1_Click);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion

        //The certification exams for the selection, by the registered candidate is showed here
        private void cboCE_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            string exam = cboCE.SelectedValue;
            //The connection is made to the database schedularforexam
            string conStr = " server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            string comstr = "select distinct city from scheduleforexam_admin_tb where certification_exam ='" + exam + "'";
            SqlCommand com = new SqlCommand(comstr, con);
            SqlDataAdapter da1 = new SqlDataAdapter(com);
            DataSet cityds1 = new DataSet();
            da1.Fill(cityds1, "scheduleforexam_admin_tb");
            cboCity.DataSource = cityds1;
            cboCity.DataMember = "scheduleforexam_admin_tb";
            cboCity.DataTextField = "city";
            cboCity.DataBind();
            cboCity.Items.Insert(0, "select");
            cboCity.SelectedIndex = 0;

            con.Close();
            Button1.Enabled = true;


        }
        //The City where the Certification exam is going to be conducted will be shown for the registerd candidate .

        private void cboCity_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            string exam = cboCE.SelectedValue;
            string city = cboCity.SelectedValue;
            string conStr1 = " server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con1 = new SqlConnection(conStr1);
            con1.Open();

            string comstr1 = "select distinct center from scheduleforexam_admin_tb where certification_exam='" + exam + "' and city ='" + city + "'";
            SqlCommand com1 = new SqlCommand(comstr1, con1);
            SqlDataAdapter db = new SqlDataAdapter(com1);
            DataSet centerds = new DataSet();
            db.Fill(centerds, "scheduleforexam_admin_tb");
            cboCenter.DataSource = centerds;
            cboCenter.DataMember = "scheduleforexam_admin_tb";
            cboCenter.DataTextField = "center";
            cboCenter.DataBind();
            cboCenter.Items.Insert(0, "select");
            cboCenter.SelectedIndex = 0;
            //The No of rows which satisfy the given condition are obtained here 
            string comstrp = "select count(*) from examschedule where certification_exam= '" + cboCE.SelectedValue + "'";
            SqlCommand comp = new SqlCommand(comstrp, con1);

            int p = Convert.ToInt32(comp.ExecuteScalar());
            //If the No of rows obtained is greater than the available seats for that city,then the error message is displayed
            if (p > 8)
                lblErrcity.Visible = true;

            con1.Close();
        }
        //The Center of a selected City where the certification exam isd going to be conducted is shown to the registered candidate
        private void cboCenter_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            string exam = cboCE.SelectedValue;
            string city = cboCity.SelectedValue;
            string date = cboCenter.SelectedValue;
            string conStr2 = " server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con2 = new SqlConnection(conStr2);
            con2.Open();
            string comstr2 = "select exam_dates from scheduleforexam_admin_tb where certification_exam='" + exam + "' and city='" + city + "' and center ='" + date + "'";
            SqlCommand com2 = new SqlCommand(comstr2, con2);
            SqlDataAdapter db1 = new SqlDataAdapter(com2);
            DataSet datesds = new DataSet();
            db1.Fill(datesds, "scheduleforexam_admin_tb");
            DropDownList4.DataSource = datesds;
            DropDownList4.DataMember = "scheduleforexam_admin_tb";
            DropDownList4.DataTextField = "exam_dates";
            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, "select");
            DropDownList4.SelectedIndex = 0;
            //	string comstr3="select distinct exam_time from scheduleforexam_admin_tb where certification_exam='"+//exam+"' and city='"+city+"' and center ='"+date+"' and exam_dates ='"+time+"'";

            string comstrp = "select count(*) from examschedule where certification_exam= '" + cboCE.SelectedValue + "' and city='" + cboCity.SelectedValue + "'";
            SqlCommand comp = new SqlCommand(comstrp, con2);
            //If the No of rows obtained is greater than the available seats for that center in a selected city,then the error message is displayed
            int p = Convert.ToInt32(comp.ExecuteScalar());
            if (p > 4)
                lblErrcenter.Visible = true;



            con2.Close();

        }

        private void DropDownList4_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            string exam = cboCE.SelectedValue;
            string city = cboCity.SelectedValue;
            string date = cboCenter.SelectedValue;
            string time = DropDownList4.SelectedValue;
            string conStr3 = " server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con3 = new SqlConnection(conStr3);
            con3.Open();
            string comstr3 = "select distinct exam_time from scheduleforexam_admin_tb where certification_exam='" + exam + "' and city='" + city + "' and center ='" + date + "' and exam_dates ='" + time + "'";

            SqlCommand com3 = new SqlCommand(comstr3, con3);
            SqlDataAdapter db = new SqlDataAdapter(com3);
            DataSet timeds = new DataSet();
            db.Fill(timeds, "scheduleforexam_admin_tb");
            DropDownList5.DataSource = timeds;
            DropDownList5.DataMember = "scheduleforexam_admin_tb";
            DropDownList5.DataTextField = "exam_time";
            DropDownList5.DataBind();
            DropDownList5.Items.Insert(0, "select");
            DropDownList5.SelectedIndex = 0;
            string comstrp = "select count(*) from examschedule where certification_exam= '" + cboCE.SelectedValue + "' and city='" + cboCity.SelectedValue + "' and center='" + cboCenter.SelectedValue + "'";
            SqlCommand comp = new SqlCommand(comstrp, con3);
            int p = Convert.ToInt32(comp.ExecuteScalar());
            //If the No of rows obtained is greater than the available seats for that taht date in a center for a selected city,then the error message is displayed			
            if (p > 2)
                lblErrdate.Visible = true;

            con3.Close();
        }

        private void Button1_Click(object sender, System.EventArgs e)
        {

            Session["certexam"] = cboCE.SelectedValue;
            Session["city"] = cboCity.SelectedValue;
            Session["center"] = cboCenter.SelectedValue;
            Session["date"] = DropDownList4.SelectedValue;
            Session["time"] = DropDownList5.SelectedValue;
            string conStr = "server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            string comstr1 = "select count(*) from examschedule where certification_exam= '" + cboCE.SelectedValue + "' and city='" + cboCity.SelectedValue + "' and center='" + cboCenter.SelectedValue + "' and avbdate= '" + DropDownList4.SelectedValue + "' and extime='" + DropDownList5.SelectedValue + "'";
            SqlCommand com1 = new SqlCommand(comstr1, con);
            //SqlDataReader reader=com1.ExecuteReader();
            //if(reader.Read())
            //if(reader.ToString()<10)
            //int i=int.Parse (com1.ExecuteScalar().ToString ());
            int i = Convert.ToInt32(com1.ExecuteScalar());
            // If the seats are availalbe for the registered candidate then the Selected values are inserted into the examschedule table in the database		

            if (i < 2)
            {
                //Button1.Enabled=true;
                string comStr = "insert into examschedule(certification_exam,city,center,avbdate,extime,pk_examid) values('" + cboCE.SelectedValue + "','" + cboCity.SelectedValue + "','" + cboCenter.SelectedValue + "','" + DropDownList4.SelectedValue + "'," + DropDownList5.SelectedValue + ",'" + Session["examid"].ToString() + "')";
                SqlCommand com = new SqlCommand(comStr, con);
                com.ExecuteNonQuery();
                Response.Redirect("Display.aspx");
            }
            else
                //If the seats are not available for the registered candidate then the selected values are not inserted into the databsae.
                Button1.Enabled = false;






            con.Close();

            /*string conStr1="server=.;database=schedularforexam;uid=sa;pwd=sa";
			SqlConnection con1=new SqlConnection(conStr1);
			con1.Open();
			string comStr1="insert into examschedule values('"+cboCE.SelectedValue+"','"+cboCity.SelectedValue+"','"+cboCenter.SelectedValue+"','"+DropDownList4.SelectedValue+"','"+DropDownList5.SelectedValue+"')";
			SqlCommand com= new SqlCommand(comStr,con);
			com.ExecuteNonQuery();


			con.Close();*/



        }

        private void DropDownList5_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            string conStr3 = " server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con3 = new SqlConnection(conStr3);
            con3.Open();
            string comstrp = "select count(*) from examschedule where certification_exam= '" + cboCE.SelectedValue + "' and city='" + cboCity.SelectedValue + "' and center='" + cboCenter.SelectedValue + "' and avbdate= '" + DropDownList4.SelectedValue + "'";
            SqlCommand comp = new SqlCommand(comstrp, con3);
            int p = Convert.ToInt32(comp.ExecuteScalar());
            if (p >= 2)
                lblErrtime.Visible = true;
            con3.Close();

        }
    }
}
