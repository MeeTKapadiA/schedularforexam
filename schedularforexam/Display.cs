using System;
using System.Data.SqlClient;

namespace schedularforexam
{
    /// <summary>
    /// Summary description for Display.
    /// </summary>

    public class Display : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Label Label1;
        protected System.Web.UI.WebControls.Label Label2;
        protected System.Web.UI.WebControls.Label Label3;
        protected System.Web.UI.WebControls.Label Label4;
        protected System.Web.UI.WebControls.Label Label5;
        protected System.Web.UI.WebControls.Label Label6;
        protected System.Web.UI.WebControls.Label Label7;
        protected System.Web.UI.WebControls.Label Label8;
        protected System.Web.UI.WebControls.Label htkt;
        protected System.Web.UI.WebControls.Label exam;
        protected System.Web.UI.WebControls.Label date;
        protected System.Web.UI.WebControls.Label time;
        protected System.Web.UI.WebControls.Label city;
        protected System.Web.UI.WebControls.Label center;
        protected System.Web.UI.WebControls.Label address;

        private void Page_Load(object sender, System.EventArgs e)
        {
            //Connection to database is made here
            string conStr = "server=.;database=schedularforexam;uid=sa;pwd=sa";
            SqlConnection con = new SqlConnection(conStr);

            con.Open();
            string rec = "", rec1 = "";
            // The hallticket number is obtained form the examschedule which will used further.
            string str = "select halltkt from examschedule where pk_examid='" + Session["examid"] + "'";
            SqlCommand com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                rec = reader[0].ToString();
            }
            //TextBox7.Text=rec;
            htkt.Text = rec;
            con.Close();

            //string conStr1="server=.;database=schedularforexam;uid=sa;pwd=sa";
            //SqlConnection con1=new SqlConnection(conStr1);
            con.Open();
            //	string str1="select distinct address from  scheduleforexam_center_tb as center ,examschedule as sch where sch.center=center.center_name";
            string str1 = "select distinct address from scheduleforexam_center_tb as c where center_name=(select center from examschedule where halltkt='" + htkt.Text + "')";
            SqlCommand com1 = new SqlCommand(str1, con);
            SqlDataReader read = com1.ExecuteReader();

            if (read.Read())
            {
                rec1 = read["address"].ToString();
            }
            // The session objects which are created earlier are used here to display the details to the registered candidate.
            address.Text = rec1;
            exam.Text = Session["certexam"].ToString();
            city.Text = Session["city"].ToString();
            center.Text = Session["center"].ToString();
            date.Text = Session["date"].ToString();
            time.Text = Session["time"].ToString();
            //string conStr="server=.;database=schedularforexam;uid=sa;pwd=sa";


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
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion



    }
}
