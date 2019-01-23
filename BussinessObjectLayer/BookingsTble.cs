using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessObjectLayer
{
   public  class BookingsTble
    {
        public int Booking_id { get; set; }
        public DateTime Booking_date { get; set; }
        public DateTime Start_date { get; set; }
        public DateTime Return_date { get; set; }
        public string C_id { get; set; }
        public string Vid { get; set; }
        public string Extension_days { get; set; }
        public DateTime Extension_return_date { get; set; }
    }
}
