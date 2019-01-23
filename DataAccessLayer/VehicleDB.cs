using BussinessObjectLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLayer
{
   public class VehicleDB
    {
        public List<BookingsTble> BookingRequest()
        {
            List<BookingsTble> Ls;
            Ls = new List<BookingsTble>();

            string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
            string cmdStr = @"SELECT  BookingsTble.Booking_id, BookingsTble.Booking_date,Bookings_Tble.Start_date,
Bookings_Tble.Return_date,CustTble.C_id, VehicleTble.Vid FROM BookingsTble INNER JOIN CustTble ON CustTble.C_id = BookingsTble.C_id
INNER JOIN BookingsTble.Vid = VehicleTble.Vid";

            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(cmdStr, con);
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
        public bool InsertVehicle(VehicleTble Vp)
        {
            try
            {
                string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "spInsert";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@Vehicle_reg", Vp.Vehicle_reg);
                cmd.Parameters.AddWithValue("@Vehicle_make", Vp.Vehicle_make);
                cmd.Parameters.AddWithValue("@Vehicle_type", Vp.Vehicle_type);
                cmd.Parameters.AddWithValue("@Vehicle_category", Vp.Vehicle_category);
                cmd.Parameters.AddWithValue("@Vehicle_capacity", Vp.Vehicle_capacity);
                cmd.Parameters.AddWithValue("@Cost_per_day", Vp.Cost_per_day);
                cmd.Parameters.AddWithValue("@Vehicle_Status", Vp.Vehicle_Status);
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

        public List<VehicleTble> GetVehicles()
        {
            List<VehicleTble> Ls;
            Ls = new List<VehicleTble>();
            string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectVehicle";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                VehicleTble Vp = new VehicleTble();
                Vp.Vid = int.Parse(dr["Vid"].ToString());
                Vp.Vehicle_reg = dr["Vehicle_reg"].ToString();
                Vp.Vehicle_make = dr["Vehicle_make"].ToString();
                Vp.Vehicle_type = dr["Vehicle_type"].ToString();
                Vp.Vehicle_category = dr["Vehicle_category"].ToString();
                Vp.Vehicle_capacity = dr["Vehicle_capacity"].ToString();
                Vp.Cost_per_day = dr["Cost_per_day"].ToString();
                Vp.Vehicle_Status = dr["Vehicle_Status"].ToString();

                Ls.Add(Vp);
            }
            dr.Close();
            con.Close();
            return Ls;
        }
        public List<VehicleTble> GetAvailableVehicleList()
        {
            List<VehicleTble> AvailableLs;
            AvailableLs = new List<VehicleTble>();
            string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
            string cmdStr = "select * from VehicleTble where Vehicle_Status = 'IN'";
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                VehicleTble Vp = new VehicleTble();
                Vp.Vid = int.Parse(dr["Vid"].ToString());
                Vp.Vehicle_reg = dr["Vehicle_reg"].ToString();
                Vp.Vehicle_make = dr["Vehicle_make"].ToString();
                Vp.Vehicle_type = dr["Vehicle_type"].ToString();
                Vp.Vehicle_category = dr["Vehicle_category"].ToString();
                Vp.Vehicle_capacity = dr["Vehicle_capacity"].ToString();
                Vp.Cost_per_day = dr["Cost_per_day"].ToString();
                Vp.Vehicle_Status = dr["Vehicle_Status"].ToString();

                AvailableLs.Add(Vp);
            }
            dr.Close();
            con.Close();
            return AvailableLs;
        }

        public List<VehicleTble> below25List()
        {
            List<VehicleTble> AvailableLs;
            AvailableLs = new List<VehicleTble>();
            string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
            string cmdStr = "select * from VehicleTble where Vehicle_Status = 'IN' and Vehicle_Capacity ='Small Family";
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                VehicleTble Vp = new VehicleTble();
                Vp.Vid = int.Parse(dr["Vid"].ToString());
                Vp.Vehicle_reg = dr["Vehicle_reg"].ToString();
                Vp.Vehicle_make = dr["Vehicle_make"].ToString();
                Vp.Vehicle_type = dr["Vehicle_type"].ToString();
                Vp.Vehicle_category = dr["Vehicle_category"].ToString();
                Vp.Vehicle_capacity = dr["Vehicle_capacity"].ToString();
                Vp.Cost_per_day = dr["Cost_per_day"].ToString();
                Vp.Vehicle_Status = dr["Vehicle_Status"].ToString();

                AvailableLs.Add(Vp);
            }
            dr.Close();
            con.Close();
            return AvailableLs;
        }
        public VehicleTble GetVehicleByID(int Vid)
        {
            VehicleTble Vp = null;
            string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
            string cmdStr = "select * from VehicleTble where Vid = @Vid";
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            cmd.Parameters.AddWithValue("@Vid", Vid);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Vp = new VehicleTble();
                Vp.Vid = int.Parse(dr["Vid"].ToString());
                Vp.Vehicle_reg = dr["Vehicle_reg"].ToString();
                Vp.Vehicle_make = dr["Vehicle_make"].ToString();
                Vp.Vehicle_type = dr["Vehicle_type"].ToString();
                Vp.Vehicle_category = dr["Vehicle_category"].ToString();
                Vp.Vehicle_capacity = dr["Vehicle_capacity"].ToString();
                Vp.Cost_per_day = dr["Cost_per_day"].ToString();
                Vp.Vehicle_Status = dr["Vehicle_Status"].ToString();

            }
            dr.Close();
            con.Close();
            return Vp;
        }

        public bool UpdateVehicleById(VehicleTble Vp, int Vid)
        {

            try
            {
                string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "sp_updateVehicle";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@vehicle_reg", Vp.Vehicle_reg);
                cmd.Parameters.AddWithValue("@vehicle_make", Vp.Vehicle_make);
                cmd.Parameters.AddWithValue("@vehicle_type", Vp.Vehicle_type);
                cmd.Parameters.AddWithValue("@vehicle_category", Vp.Vehicle_category);
                cmd.Parameters.AddWithValue("@vehicle_capacity", Vp.Vehicle_capacity);
                cmd.Parameters.AddWithValue("@cost_per_day", Vp.Cost_per_day);
                cmd.Parameters.AddWithValue("@vehicle_status", Vp.Vehicle_Status);
                cmd.Parameters.AddWithValue("@Vid", Vid);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                return true;

            }
            catch (Exception e)
            {
                return false;
            }
        }

        public bool DeleteVehicleById(int Vid)
        {
            try
            {
                string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "sp_deleteVehicle";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@Vid", Vid);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool GetBookingsList(List<BookingsTble> Ls)
        {
            string conStr = "Data Source=localhost;Initial Catalog=mtaAsgnmnt;Integrated Security=True";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            // SqlTransaction SqTrans = con.BeginTransaction();

            try
            {
                foreach (var item in Ls)
                {

                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "sp_InsertBookings";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Booking_date", item.Booking_date);
                    cmd.Parameters.AddWithValue("@Start_date", item.Start_date);
                    cmd.Parameters.AddWithValue("@Return_date", item.Return_date);
                    cmd.Parameters.AddWithValue("@C_id", item.C_id);
                    cmd.Parameters.AddWithValue("@Vid", item.Vid);
                    cmd.Parameters.AddWithValue("@Extension_days", item.Extension_days);
                    cmd.Parameters.AddWithValue("@Extension_return_date", item.Extension_return_date);
                    cmd.ExecuteNonQuery();

                }
                // SqTrans.Commit();
                con.Close();
                return true;
            }
            catch
            {
                // SqTrans.Rollback();
                return false;
            }
        }

    }
}

