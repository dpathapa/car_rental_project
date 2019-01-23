using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customers_PrivateHireRequest : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDate.Text = DateTime.Now.ToShortDateString();
        cmpStart0.ValueToCompare = DateTime.Now.ToString("dd/MM/yyyy");
        con.ConnectionString = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
        con.Open();

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into RequestPrivateHire" + "(Userid,StartDate,Returndate,Type,Capacity,Date) values (@Userid,@StartDate,@Returndate,@Type,@Capacity,@Date)", con);
        cmd.Parameters.AddWithValue("@Userid", txtUid.Text);
        cmd.Parameters.AddWithValue("@StartDate", DateTime.Parse(txtSdate.Text));
        cmd.Parameters.AddWithValue("@ReturnDate", DateTime.Parse(txtEnd.Text));
        cmd.Parameters.AddWithValue("@Type", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@Capacity", DropDownList2.SelectedValue);
        cmd.Parameters.AddWithValue("@Date", DateTime.Parse(lblDate.Text));
        cmd.ExecuteNonQuery();
        con.Close();
        lblmsg.Text = "Request Submitted Sucessfully";
    }
}