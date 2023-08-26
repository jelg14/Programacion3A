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

    public void EditarAlumno(Clases.Alumno alumno, int idAlumno)
    {
        try
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = @"Server=DESKTOP-C8E8KOB\SQLEXPRESS;Database=PrograIII2023COPY;Trusted_Connection=true";
                conn.Open();
                SqlCommand insertCommand = new SqlCommand("UPDATE Alumno SET" +
                    "Carnet = @Carne,"+
                    "PrimerNombre = @PrimerNombre,"+
                    "SegundoNombre = @SegundoNombre,"+
                    "PrimerApellido = @PrimerApellido,"+
                    "SegundoApellido = @SegundoApellido," +
                    "Celular = @Celular,"+
                    "TelefonoCasa = @TelefonoCasa WHERE ID ="+idAlumno, conn);
                insertCommand.Parameters.Add(new SqlParameter("Carne", alumno.Carne));
                insertCommand.Parameters.Add(new SqlParameter("PrimerNombre", alumno.PrimerNombre));
                insertCommand.Parameters.Add(new SqlParameter("SegundoNombre", alumno.SegundoNombre));
                insertCommand.Parameters.Add(new SqlParameter("PrimerApellido", alumno.PrimerApellido));
                insertCommand.Parameters.Add(new SqlParameter("SegundoApellido", alumno.SegundoApellido));
                insertCommand.Parameters.Add(new SqlParameter("Celular", alumno.Celular));
                insertCommand.Parameters.Add(new SqlParameter("TelefonoCasa", alumno.TelefonoCasa));
                insertCommand.ExecuteScalar();
            }
        }
        catch (Exception e)
        {
            MessageBox.Show(e.Message);
        }
    }
}
