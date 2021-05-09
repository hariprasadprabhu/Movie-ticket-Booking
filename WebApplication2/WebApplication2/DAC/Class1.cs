using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Script.Serialization;

namespace WebApplication2.DAC
{
    public class Class1
    {
        public int connectdb()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            string checkuser = "select count(*) from shows";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            

            conn.Close();
            return temp;

        }

        public bool updateSeatStatus(string showid,string seatid, string isPaid = null)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            string checkuser = null;
            if (isPaid==null)
            {
                checkuser = "update SeatStatus set startTime=GETDATE() where seatNumber=" + seatid + "AND showid=" + showid;
            }
            else
            {
                checkuser = "update SeatStatus set startTime=GETDATE(),isOccupied=1 where seatNumber IN (" + seatid + ") AND showid=" + showid;
            }
            //SqlCommand command = new SqlCommand(checkuser, conn);
            SqlDataAdapter adapter = new SqlDataAdapter();
            try
            {
                adapter.InsertCommand = new SqlCommand(checkuser, conn);
                adapter.InsertCommand.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }

            //SqlCommand cmd = new SqlCommand(checkuser, conn);
            //int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        }

        public string getSeatStatus(string showid)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            DataTable dataTable = new DataTable();
            string query = "select * from seatstatus where showid=" + showid;
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();

            // create data adapter
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            // this will query your database and return the result to your datatable
            da.Fill(dataTable);
            conn.Close();
            String daresult = null;
            da.Dispose();
            DataSet ds = new DataSet();
            ds.Tables.Add(dataTable);
            daresult = DataSetToJSON(ds);
            return daresult;

        }
        public string DataSetToJSON(DataSet ds)
        {
            Dictionary<string, object> dict = new Dictionary<string, object>();
            foreach (DataTable dt in ds.Tables)
            {
                object[] arr = new object[dt.Rows.Count + 1];

                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    arr[i] = dt.Rows[i].ItemArray;
                }

                dict.Add(dt.TableName, arr);
            }

            JavaScriptSerializer json = new JavaScriptSerializer();
            return json.Serialize(dict);
        }

        public string getShowDetails(string showid)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            DataTable dataTable = new DataTable();
            string query = "select showtime,ticketGoldPrice,ticketDimondprice,mname,mphoto from shows s, movies m where s.mid=m.mid and s.showid=" + showid;
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();

            // create data adapter
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            // this will query your database and return the result to your datatable
            da.Fill(dataTable);
            conn.Close();
            String daresult = null;
            da.Dispose();
            DataSet ds = new DataSet();
            ds.Tables.Add(dataTable);
            daresult = DataSetToJSON(ds);
            return daresult;
        }

       
    }
}