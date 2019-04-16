using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

public partial class Customers_CustomerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnClogin_Click(object sender, EventArgs e)
    {
       // Debug.WriteLine("hello");
        string mycon = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        SqlConnection scon2 = new SqlConnection(mycon);
        SqlConnection scon3 = new SqlConnection(mycon);

        SqlCommand cmdInDatabase = new SqlCommand("Select count(*) from CustTble where Userid='" + txtUid.Text + "' and Password= '" + txtUpass.Text + "'", scon2);

        SqlCommand cmd = new SqlCommand("Select Customer_status from CustTble where Userid='"+txtUid.Text+"' and Password= '" +txtUpass.Text+ "'", scon);

        scon.Open();
        scon2.Open();
        //SqlDataReader dr = cmd.ExecuteReader();
        //String answer = dr.Read();

       // Debug.WriteLine("after connected");
        var dataAdapter = new SqlDataAdapter { SelectCommand = cmd };
        var dataAdapter1 = new SqlDataAdapter { SelectCommand = cmdInDatabase };
        var dataSet = new DataSet();
       // Debug.WriteLine("after querry");
        dataAdapter1.Fill(dataSet);
        string answer = null;
        using (var reader = cmdInDatabase.ExecuteReader())
        {
            if (reader.Read())
            {
                string exist = reader.GetValue(0).ToString();
                if (exist == "1")
                {
                    // get value only if user & passwd in database
                    using (var reader2 = cmd.ExecuteReader())
                    {
                        if (reader2.Read())
                        {
                            Debug.WriteLine(reader2.GetValue(0));
                            Debug.WriteLine(reader2.GetValue(0).ToString());
                            answer = reader2.GetString(0);
                        }
                    }
                }
            }
        }
        Console.WriteLine("here");
        if (answer!=null && answer != "Blacklisted")
        {
            scon3.Open();
            SqlCommand cmd3 = new SqlCommand("Select C_id from CustTble where Userid='" + txtUid.Text + "' and Password= '" + txtUpass.Text + "'", scon3);
            var dataAdapter3 = new SqlDataAdapter { SelectCommand = cmd3 };
            using (var reader = cmd3.ExecuteReader())
            {
                if (reader.Read())
                {
                    Session["Userid"] = txtUid.Text;
                    Session["C_id"] = reader.GetValue(0).ToString();
                }
            }
            Response.Redirect("BookAcar.aspx");
            scon3.Close();
        }
        else{
            Response.Write("Access denied, Please contact Admin members.");
        }
        scon2.Close();
        scon.Close();
    }
}