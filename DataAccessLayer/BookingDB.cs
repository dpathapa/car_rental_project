using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using BussinessObjectLayer;
using DataAccessLayer;


namespace DataAccessLayer
{
    public class BookingDB
    {

        public bool CreateCustomer(BookingsTble Cu)
        {
            string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
            string cmdStr = @"insert into BookingsTble (Booking_date,Start_date,Return_date,C_id,Vid,null,null)
                                            values  (@Booking_date,@Start_date,@Return_date,@C_id,@Vid,null,null)";
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            cmd.Parameters.AddWithValue("@Booking_date", Cu.Booking_date);
            cmd.Parameters.AddWithValue("@Start_date", Cu.Start_date);
            cmd.Parameters.AddWithValue("@Return_date", Cu.Return_date);
            cmd.Parameters.AddWithValue("@C_id", Cu.C_id);
            cmd.Parameters.AddWithValue("@Vid", Cu.Vid);
            ;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return true;
        }
        public List<BookingsTble> GetCustomer()
        {
            string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
            try
            {
                List<BookingsTble> Ls;
                Ls = new List<BookingsTble>();
                string cmdStr = @"SELECT        *
                                            FROM BookingsTble INNER JOIN
                                            CustTble ON BookingsTble.C_id = CustTble.C_id";

                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    BookingsTble Cust = new BookingsTble();
                    Cust.Booking_id = int.Parse(dr["Booking_id"].ToString());
                    Cust.Booking_date = DateTime.Parse(dr["Booking_date"].ToString());
                    Cust.Start_date = DateTime.Parse(dr["Start_date"].ToString());
                    Cust.Return_date = DateTime.Parse(dr["Return_date"].ToString());
                    Ls.Add(Cust);
                }
                dr.Close();
                con.Close();
                return Ls;
            }
            catch
            {
                throw;
            }
        }
    }
}
