using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
public partial class Customers_BookAcar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl1.Text = "Hello, " + Session["Userid"].ToString();
        
        if (!IsPostBack)
        {
            /*string DateInString = DateTime.Now.AddHours(5).ToString("dd/MM/yyyy");
            DateTime start_date = DateTime.Parse(DateInString);
            DateTime return_date =start_date.AddDays(14);
            if(DateTime.Now > return_date) {
                Response.Write("invalid Date picked");

            }*/

            //txtStart.Text = DateTime.Now.AddHours(5).ToString("dd/MM/yyyy");

             cmpStart.ValueToCompare = DateTime.Today.AddHours(5).ToString("dd/MM/yyyy");
             cmpStart.Validate();
            

            //  Debug.WriteLine(txtStart.Text);
            //  DateTime parsedDate = DateTime.Parse(txtStart.Text.ToString()).AddDays(14);
            //   txtReturn.Text = parsedDate.ToString("dd/MM/yyyy");

            // cmpVal1.Validate();



            DataTable dt = new DataTable();
            dtSmallCars.Visible = false;
            dtSmallCars0.Visible = false;
        }
    }
     protected void dtSmallCars_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Response.Redirect("ConfirmBooking.aspx?id=" + e.CommandArgument.ToString());

        }
    }
    protected void dtSmallCars0_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "Select1")
        {
            Response.Redirect("ConfirmBooking.aspx?id=" + e.CommandArgument.ToString());

        }
    }
    protected void btncheck_Click(object sender, EventArgs e)
    {

        DateTime Start_date = DateTime.Parse(txtStart.Text.ToString());
        string Pick_up = ddlPickup.SelectedItem.Text;
        DateTime Return_date = DateTime.Parse(txtReturn.Text.ToString());
        string Drop_off = ddlDropoff.SelectedItem.Text;
        string Age = rbdAge.SelectedItem.Text;
        if (rbdAge.SelectedIndex == 0)
        {
            rbdAge.SelectedItem.Text = "Below 25";
            dtSmallCars.Visible = true;
            dtSmallCars0.Visible = false;
        }
        else if (rbdAge.SelectedIndex == 1)
        {
            rbdAge.SelectedItem.Text = "Above 25";
            dtSmallCars0.Visible = true;
            dtSmallCars.Visible = false;
        }

        Session["Start_date"] = Start_date.ToShortDateString();
        Session["Return_date"] = Return_date.ToShortDateString();
        Session["Pick_up"] = Pick_up;
        Session["Drop_off"] = Drop_off;

        dtSmallCars.DataBind();
        dtSmallCars0.DataBind();

    }
}