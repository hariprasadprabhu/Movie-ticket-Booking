using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using WebApplication2.DAC;

namespace WebApplication2.Views
{
    public static class identify
    {
        
    }
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext.Current.Session["SelectedSeat"] = "";


            System.Web.HttpContext.Current.Session["mydata"] = "1";
            string showid = System.Web.HttpContext.Current.Session["mydata"].ToString();
            
           // loadAllSeats(showid);
        }
        [System.Web.Services.WebMethod]
        public static string loadAllSeats()
        {
            Class1 cs = new Class1();
            string dt = cs.getSeatStatus("1");
            return dt;
            
        }
       
        [System.Web.Services.WebMethod(EnableSession = true)]
        public static string UpdateSeatStatus(string showid,string seatId, string isPaid=null)
        {
            
            //updateselectedSeats(seatId);
            Class1 cs = new Class1();
            bool temp=cs.updateSeatStatus(showid,seatId,isPaid);
            return  temp+"";
        }
        [System.Web.Services.WebMethod]
        public static string getShowDetails()
        {
            Class1 cs = new Class1();
            string dt = cs.getShowDetails("1");
            return dt;
        }
        protected void payment_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx",true);
        }
        


    }
}