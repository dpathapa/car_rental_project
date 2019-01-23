using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BussinessObjectLayer;
using DataAccessLayer;

namespace BusinessLogicLayer
{
    public class CustomerBusiness
    {
        public bool InsertCustomer(CustTble Cp)
        {
                CustomerDB Cd = new CustomerDB();
                Cd.InsertCustomer(Cp);
                return true;
            }


        }

    /*   public List<BookingsTble> GetCustomer()
     {
         BookingDB BD = new BookingDB();
         return BD.GetCustomer();
     }

        public CustTble GetCustomerById(int C_id)
          {
              CustomerDB Cd = new CustomerDB();
              CustTble Cp = Cd.GetCustomerByID(C_id);
              return Cp;
          }

          public bool UpdateCustomerById(CustTble Vp, int C_id)
          {
              CustomerDB Cd = new CustomerDB();
              Cd.UpdateCustomerById(Vp, C_id);
              return true;
          }

          /*    public bool DeleteCustomerById(int C_id)
              {
                  CustomerDB Cd = new CustomerDB();
                  Cd.DeleteCustomerById(C_id);
                  return true;
              }
          }*/

}

