using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for BLogic
/// </summary>
public class BLogic
{
    public static SqlConnection GetDbConnection()
    {
        SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["connection"].ToString());
        return con;
    }

    public static DataSet ReturnDataSet(string selQry)
    {
        SqlDataAdapter da = new SqlDataAdapter
            (selQry,GetDbConnection());
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    public static int ExecuteQuery(string query)
    {
        SqlConnection con = GetDbConnection();
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;
    }

    public static SqlDataReader ReturnDataReader(string selQry)
    {
        SqlConnection con = GetDbConnection();
        SqlCommand cmd = new SqlCommand(selQry, con);
        con.Open();
        SqlDataReader dtr = cmd.ExecuteReader();
        return dtr;
    }

    public static void FillGrid(string selQry,GridView gridId)
    {
        gridId.DataSource = ReturnDataSet(selQry);
        gridId.DataBind();
    }
    public static void FillDataList
        (string selQry, DataList dataListId)
    {
        dataListId.DataSource = ReturnDataSet(selQry);
        dataListId.DataBind();
    }



}