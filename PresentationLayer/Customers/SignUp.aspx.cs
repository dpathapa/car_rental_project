using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customers_SignUp : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

        cmpLissue.ValueToCompare = DateTime.Now.ToString("dd/MM/yyyy");
        cmpLissue.Validate();
       
        con.ConnectionString = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
        con.Open();

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
       
        SqlCommand cmd = new SqlCommand("insert into CustTble" + "(Firstname,Lastname,Gender,Age,Address,Phone_no,Email,License_no,License_issue_date,License_expire_date,Userid,Password) values (@Firstname,@Lastname,@Gender,@Age,@Address,@Phone_no,@Email,@License_no,@License_issue_date,@License_expire_date,@Userid,@Password)", con);
        cmd.Parameters.AddWithValue("@Firstname", txtFname.Text);
        cmd.Parameters.AddWithValue("@Lastname", txtLname.Text);
        cmd.Parameters.AddWithValue("@Gender", rbdGender.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Age",txtAge.Text);
        cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@Phone_no", txtPhone.Text);
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@License_no", txtLicence.Text);
        cmd.Parameters.AddWithValue("@License_issue_date", txtIssue.Text);
        cmd.Parameters.AddWithValue("@License_expire_date", txtExpire.Text);
        cmd.Parameters.AddWithValue("@Userid", txtUid.Text);
        cmd.Parameters.AddWithValue("@Password", txtPass.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("CustomerLogin.aspx");
        Response.Write("Registered Sucessfully");      
        
    }

   }