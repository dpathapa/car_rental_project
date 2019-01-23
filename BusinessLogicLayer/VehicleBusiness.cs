using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogicLayer;
using BussinessObjectLayer;
using DataAccessLayer;

namespace BusinessLogicLayer
{
   public class VehicleBusiness
    {
        //method- business rule or req goes here
        VehicleDB BD;
        public VehicleBusiness()
        {
            BD = new VehicleDB();
        }

        public List<BookingsTble> BookingRequest()
        {

            return BD.BookingRequest();
        }
        
       
        public bool InsertVehicle(VehicleTble Vp)
        {
            VehicleDB Vd = new VehicleDB();
            Vd.InsertVehicle(Vp);
            return true;
        }

        public List<VehicleTble> GetVehicles()
        {
            VehicleDB Vd = new VehicleDB();
            return Vd.GetVehicles();
        }


        public VehicleTble GetVehicleById(int Vid)
        {
            VehicleDB Vd = new VehicleDB();
            VehicleTble Vp = Vd.GetVehicleByID(Vid);
            return Vp;
        }

        public bool UpdateVehicleById(VehicleTble Vp, int Vid)
        {

            VehicleDB Vd = new VehicleDB();
            Vd.UpdateVehicleById(Vp, Vid);
            return true;
        }

        public bool DeletevehicleById(int Vid)
        {
            VehicleDB Vd = new VehicleDB();
            Vd.DeleteVehicleById(Vid);
            return true;
        }

      /*  public List<VehicleTble> GetAvailableVechileList(List<BookingsTble> ls)
        {
            VehicleDB Vd = new VehicleDB();
            return Vd.GetAvailableVehicleList();

        }*/

        public List<VehicleTble> GetAvailableVechileList()
        {
            VehicleDB Vd = new VehicleDB();
            return Vd.GetAvailableVehicleList();
        }
     }
}


