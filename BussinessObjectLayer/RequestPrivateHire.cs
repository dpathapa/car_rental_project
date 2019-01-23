using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessObjectLayer
{
    public class RequestPrivateHire
    {

        public int Request_no { get; set; }
        public string UserID{ get; set; }
        public DateTime StartDate { get; set; }
        public DateTime ReturnDate { get; set; }
        public string Type { get; set; }
        public string Capacity { get; set; }
        public DateTime Date { get; set; }
        
    }
}
