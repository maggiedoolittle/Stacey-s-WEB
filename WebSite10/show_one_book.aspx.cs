using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class show_one_book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strUrl = HttpContext.Current.Request.PhysicalApplicationPath + "App_Data\\db1.mdb";
        string ACCESS_CONN_STRING = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + strUrl + "";
        OleDbConnection conn = new OleDbConnection(ACCESS_CONN_STRING);
        conn.Open();
        string id = Request.QueryString["ID"];

        string selectStr1 = "select title from aa where ID=" + id + "";
        OleDbCommand cmd1 = new OleDbCommand(selectStr1, conn);
        Label9.Text = cmd1.ExecuteScalar().ToString();

        string selectStr2 = "select author from aa where ID=" + id + "";
        OleDbCommand cmd2 = new OleDbCommand(selectStr2, conn);
        Label10.Text = cmd2.ExecuteScalar().ToString();

        string selectStr3 = "select publish from aa where ID=" + id + "";
        OleDbCommand cmd3 = new OleDbCommand(selectStr3, conn);
        Label11.Text = cmd3.ExecuteScalar().ToString();

        string selectStr4 = "select recency from aa where ID=" + id + "";
        OleDbCommand cmd4 = new OleDbCommand(selectStr4, conn);
        Label12.Text = cmd4.ExecuteScalar().ToString();

        string selectStr5 = "select price from aa where ID=" + id + "";
        OleDbCommand cmd5 = new OleDbCommand(selectStr5, conn);
        Label13.Text = cmd5.ExecuteScalar().ToString();

        string selectStr6 = "select username from aa where ID=" + id + "";
        OleDbCommand cmd6 = new OleDbCommand(selectStr6, conn);
        Label14.Text = cmd6.ExecuteScalar().ToString();

        string selectStr7 = "select telephone from aa where ID=" + id + "";
        OleDbCommand cmd7 = new OleDbCommand(selectStr7, conn);
        Label15.Text = cmd7.ExecuteScalar().ToString();

        string selectStr8 = "select QQ from aa where ID=" + id + "";
        OleDbCommand cmd8 = new OleDbCommand(selectStr8, conn);
        Label16.Text = cmd8.ExecuteScalar().ToString();

        string selectStr9 = "select bookimage from aa where ID=" + id + "";
        OleDbCommand cmd9 = new OleDbCommand(selectStr9, conn);
        string ImagePath = cmd9.ExecuteScalar().ToString();
        Image1.ImageUrl = ImagePath;
        
        conn.Close();
    }

}