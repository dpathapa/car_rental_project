using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        string mycon = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from AdminTble where Username=@username and Password=@password", scon);
        cmd.Parameters.AddWithValue("@username", txtUserId.Text);
        cmd.Parameters.AddWithValue("@password", txtPswd.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        scon.Open();
        int i = cmd.ExecuteNonQuery();
        scon.Close();

        if (dt.Rows.Count > 0)
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            lblMsg.Text = "Invalid Userid and Password";
        }
    }
}