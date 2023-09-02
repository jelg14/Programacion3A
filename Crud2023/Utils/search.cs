using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Crud2023.utilidades
{
    public class search
    {
        public DataSet BuscarAlumnoCarnet(int carnet)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = @"Server=DESKTOP-C8E8KOB\SQLEXPRESS;Database=PrograIII2023COPY;Trusted_Connection=true";
                    conn.Open();
                    var select = "SELECT top 500 * FROM Alumno WHERE Carnet = " + carnet;
                    var dataAdapter = new SqlDataAdapter(select, conn);
                    var commandBuilder = new SqlCommandBuilder(dataAdapter);
                    var ds = new DataSet();
                    dataAdapter.Fill(ds);
                    conn.Close();
                    return ds;
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}

    