using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using BussinessObjectLayer;


namespace DataAccessLayer
{
    public class CustomerDB

       
    {
         public bool InsertCustomer(CustTble Cp)
        {
            try
            {
                string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "sp_InsertCust";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@Firstname", Cp.Firstname);
                cmd.Parameters.AddWithValue("@Lastname", Cp.Lastname);
                cmd.Parameters.AddWithValue("@Gender", Cp.Gender);
                cmd.Parameters.AddWithValue("@Age",Cp.Age);
                cmd.Parameters.AddWithValue("@Address",Cp.Address);
                cmd.Parameters.AddWithValue("@Phone",Cp.Phone_no);
                cmd.Parameters.AddWithValue("@Email",Cp.Email);
                cmd.Parameters.AddWithValue("@License_no",Cp.License_no);
                cmd.Parameters.AddWithValue("@License_issue_date",Cp.License_issue_date);
                cmd.Parameters.AddWithValue("@License_expire_date",Cp.License_expire_date);
                cmd.Parameters.AddWithValue("@Customer_status", Cp.Customer_status);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
                return true;
            }
            catch
            {
                return false;

            }
        }

        public List<BookingsTble> GetCustomer()
        {
            List<BookingsTble> Ls;
            Ls = new List<BookingsTble>();
            string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
             string cmdStr = @"SELECT        *
                                            FROM BookingsTble INNER JOIN
                                            CustTble ON CustTable.C_id = BookingsTable.C_id
                                            WHERE (CustTable.C_id= @C_id)";
                con = new SqlConnection(conStr);
                cmd = new SqlCommand(cmdStr, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
               {
                BookingsTble Bp = new BookingsTble();
                Bp.Booking_id = int.Parse(dr["Booking_id"].ToString());
                Bp.Booking_date = DateTime.Parse(dr["Booking_date"].ToString());
                Bp.Start_date = DateTime.Parse(dr["Start_date"].ToString());
                Bp.Return_date = DateTime.Parse(dr["Return_date"].ToString());
                Bp.C_id = dr["C_id"].ToString();
                Bp.Vid = dr["Vid"].ToString();
                Ls.Add(Bp);

             }
            dr.Close();
            con.Close();
            return Ls;
        }
        
    }
}
