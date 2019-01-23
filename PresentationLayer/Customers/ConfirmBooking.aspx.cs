using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customers_ConfirmBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            txtstartDate.Text = Session["Start_date"].ToString();
            txtReturnDate.Text = Session["Return_date"].ToString();
            txtPick_up.Text = Session["Pick_up"].ToString();
            txtDrop_off.Text = Session["Drop_off"].ToString();

            grdSelected.DataSource = null;
            grdSelected.DataBind();
            string mycon = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
            string myquery = "select * from VehicleTble where Vid=" + Request.QueryString["id"];
            DataSet ds = new DataSet();
            SqlDataAdapter sqlda = new SqlDataAdapter(myquery, mycon);
            sqlda.Fill(ds);
            grdSelected.DataSource = ds;
            grdSelected.DataBind();
        }

        txtDate.Text = DateTime.Now.ToShortDateString();

    }

    protected void btnBook_Click(object sender, EventArgs e)
    {
        string mycon1 = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
        SqlConnection s = new SqlConnection(mycon1);

        string startdt = Convert.ToDateTime(txtstartDate.Text).ToString("yyyy-MM-dd");
        string enddt = Convert.ToDateTime(txtReturnDate.Text).ToString("yyyy-MM-dd");
        string Booking_date = DateTime.Now.ToString("yyyy-MM-dd");
        SqlCommand cmd1 = new SqlCommand();

        string VehicleId = Request.QueryString["id"].ToString();
        string updateBooking = "insert into BookingsTble(Booking_date,Start_date ,Return_date,C_id,Vid)VALUES ('" + Booking_date + "','" + startdt + "','" + enddt + "', 511, " + VehicleId + ")";
        cmd1.CommandText = updateBooking;
        cmd1.Connection = s;
        s.Open();
        cmd1.ExecuteNonQuery();
        s.Close();


        string VehicleTbleInfo = "update VehicleTble set Vehicle_Status ='RESERVED' where vid= '" + VehicleId + "' ";
        cmd1.CommandText = VehicleTbleInfo;
        cmd1.Connection = s;
        s.Open();
        cmd1.ExecuteNonQuery();
        s.Close();
        lblmsg.Text = "Booking Confirmed, Successfully!!";
    }
}