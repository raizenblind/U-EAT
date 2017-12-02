using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace U_EAT.MyClass
{
    public class Connection
    {

        private VarConst myconst = new VarConst();
        private SqlConnection myconnection = new SqlConnection();
        public List<myParameters> myparameters = new List<myParameters>();
        public Boolean Connect(string connectionstring)
        {
            try
            {
                myconnection = new SqlConnection(connectionstring);
                myconnection.Open();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public DataSet GetDataset(string source)
        {
            if (!Connect(myconst.connectionstring))
            {
                return null;
            }
            DataSet dataset = new DataSet();
            SqlCommand mycommand = new SqlCommand();
            try
            {
                mycommand.Connection = myconnection;
                mycommand.CommandText = source;
                mycommand.CommandType = CommandType.StoredProcedure;
                int x = 0;
                if (myparameters.Count > 0)
                {
                    do
                    {
                        mycommand.Parameters.Add(myparameters[x].ParameterName, myparameters[x].mytype).Value = myparameters[x].Value;

                        x = x + 1;
                    } while (x < myparameters.Count());
                }
                SqlDataAdapter myDataAdapter = new SqlDataAdapter(mycommand);
                myDataAdapter.Fill(dataset);
                myDataAdapter.Dispose();
                return dataset;
            }
            finally
            {
                mycommand.Connection.Close();
            }
        }
        public DataTable GetDataTable(string source)
        {
            if (!Connect(myconst.connectionstring))
            {
                return null;
            }
            DataTable datatable = new DataTable();
            SqlCommand mycommand = new SqlCommand();
            try
            {
                mycommand.Connection = myconnection;
                mycommand.CommandText = source;
                mycommand.CommandType = CommandType.StoredProcedure;
                int x = 0;
                if (myparameters.Count > 0)
                {
                    do
                    {
                        mycommand.Parameters.Add(myparameters[x].ParameterName, myparameters[x].mytype).Value = myparameters[x].Value;
                        x = x + 1;
                    } while (x < myparameters.Count());
                }
                SqlDataAdapter myDataAdapter = new SqlDataAdapter(mycommand);
                myDataAdapter.Fill(datatable);
                myDataAdapter.Dispose();

            }
            catch (Exception e)
            {

            }
            finally
            {

                mycommand.Connection.Close();

            }
            return datatable;
        }
        public void ExecuteNonQuery(string source)
        {
            if (!Connect(myconst.connectionstring))
            {
                return;
            }

            SqlCommand mycommand = new SqlCommand();
            try
            {
                mycommand.Connection = myconnection;
                mycommand.CommandText = source;
                mycommand.CommandType = CommandType.StoredProcedure;
                int x = 0;
                if (myparameters.Count > 0)
                {
                    do
                    {
                        mycommand.Parameters.Add(myparameters[x].ParameterName, myparameters[x].mytype).Value = myparameters[x].Value;
                        x = x + 1;
                    } while (x < myparameters.Count());
                }
                mycommand.ExecuteNonQuery();
            }
            finally
            {
                mycommand.Connection.Close();
            }
        }
        public String ExecuteScalar(string source)
        {
            if (!Connect(myconst.connectionstring))
            {
                return "";
            }

            SqlCommand mycommand = new SqlCommand();
            try
            {
                mycommand.Connection = myconnection;
                mycommand.CommandText = source;
                mycommand.CommandType = CommandType.StoredProcedure;
                int x = 0;
                if (myparameters.Count > 0)
                {
                    do
                    {
                        mycommand.Parameters.Add(myparameters[x].ParameterName, myparameters[x].mytype).Value = myparameters[x].Value;
                        x = x + 1;
                    } while (x < myparameters.Count());
                }
                Object myScalar = new Object();

                myScalar = mycommand.ExecuteScalar();
                if (myScalar != null)
                {
                    return myScalar.ToString();
                }
                else
                {
                    return "";
                }
            }
            finally
            {
                mycommand.Connection.Close();
            }
        }
        public DataRow GetSingleRow(string source)
        {
            if (!Connect(myconst.connectionstring))
            {
                return null;
            }

            SqlCommand mycommand = new SqlCommand();
            try
            {
                DataTable datatable = new DataTable();
                mycommand.Connection = myconnection;
                mycommand.CommandText = source;
                mycommand.CommandType = CommandType.StoredProcedure;
                int x = 0;
                if (myparameters.Count > 0)
                {
                    do
                    {
                        mycommand.Parameters.Add(myparameters[x].ParameterName, myparameters[x].mytype).Value = myparameters[x].Value;
                        x = x + 1;
                    } while (x < myparameters.Count());
                }
                SqlDataAdapter myDataAdapter = new SqlDataAdapter(mycommand);
                myDataAdapter.Fill(datatable);
                DataRow drow;
                drow = datatable.Rows[0];
                return drow;

            }
            finally
            {
                mycommand.Connection.Close();
            }
        }

    }
    public class myParameters
    {
        public string ParameterName { get; set; }
        public dynamic Value
        {
            get
            {
                return _myProperty;
            }
            set
            {
                if ((value == null))
                {
                    _myProperty = "";
                }
                else
                {
                    _myProperty = value;
                }
            }
        }
        public SqlDbType mytype { get; set; }

        public dynamic _myProperty { get; set; }
    }
}