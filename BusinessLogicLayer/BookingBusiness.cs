using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using BussinessObjectLayer;
using DataAccessLayer;

namespace BusinessLogicLayer
{
    public class BookingBusiness
    {
        public List<BookingsTble> GetCustomer()
        {
            try
            {
                BookingDB Bd = new BookingDB();
                List<BookingsTble> Ls = Bd.GetCustomer();
                return Ls;
            }
            catch
            {
                throw;
            }
        }
    }
}
