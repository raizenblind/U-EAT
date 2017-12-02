using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace U_EAT
{
    public partial class RestoView : System.Web.UI.Page
    {
        public static Connection con = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class RestoCard
        {
            public string RowID, cardDescription, TimePeriod, Discounted, Original, Purchased, Reserved, Cancelled;
        }

        [WebMethod]
        public static List<RestoCard> getRestoCards()
        {

            List<RestoCard> finallist = new List<RestoCard>();

            DataTable descDT = new DataTable();
            con.myparameters.Add(new myParameters { ParameterName = "@RestoID", mytype = SqlDbType.VarChar, Value = "3" });
            descDT = con.GetDataTable("sp_displayMyRestoCards");
            for(int i = 0; i < descDT.Rows.Count; i++)
            {
                RestoCard templist = new RestoCard();
                templist.RowID = descDT.Rows[i][0].ToString();
                templist.cardDescription = descDT.Rows[i][2].ToString();
                templist.TimePeriod = descDT.Rows[i][3].ToString();
                templist.Discounted = descDT.Rows[i][4].ToString();
                templist.Original = descDT.Rows[i][5].ToString();
                templist.Purchased = descDT.Rows[i][6].ToString();
                templist.Reserved = descDT.Rows[i][7].ToString();
                templist.Cancelled = descDT.Rows[i][8].ToString();
                finallist.Add(templist);
            }

            return finallist;
        }
    }
}