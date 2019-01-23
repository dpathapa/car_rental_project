using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customers_CustomerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnClogin_Click(object sender, EventArgs e)
    {
        string mycon = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select count(*) from CustTble where Userid='"+txtUid.Text+"' and Password= '" +txtUpass+ "'and Password= '" +txtUpass+ "'", scon);
        scon.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["Cid"] = txtUid.Text;
            Response.Redirect("BookAcar.aspx");
        }else
        {
            Response.Write("Data not match");
        }
    }
}