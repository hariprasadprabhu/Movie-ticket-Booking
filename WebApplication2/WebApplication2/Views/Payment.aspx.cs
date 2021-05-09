using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.DAC;

namespace WebApplication2.Views
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        public string PayAmount(string showid, string seatId, string isPaid)
        {
            Class1 cs = new Class1();
            bool val=cs.updateSeatStatus(showid,seatId,isPaid);
            return val+"";
        }

    }
}