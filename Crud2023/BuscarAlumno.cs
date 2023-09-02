using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Crud2023.Clases;
namespace Crud2023
{
    public partial class BuscarAlumno : Form
    {
        public BuscarAlumno()
        {
            InitializeComponent();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            DataSet dsAlumno = new DataSet();
            utilidades.search se = new utilidades.search();
            dsAlumno = se.BuscarAlumnoCarnet(int.Parse(txtCarnet.Text));
            BindingSource bs = new BindingSource();
            bs.DataSource = dsAlumno.Tables[0];
            dataGridView1.DataSource = bs;
            dataGridView1.ReadOnly = true;
            
        }

        private void txtCarnet_TextChanged(object sender, EventArgs e)
        {

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
                        "Carnet = @Carne," +
                        "PrimerNombre = @PrimerNombre," +
                        "SegundoNombre = @SegundoNombre," +
                        "PrimerApellido = @PrimerApellido," +
                        "SegundoApellido = @SegundoApellido," +
                        "Celular = @Celular," +
                        "TelefonoCasa = @TelefonoCasa WHERE ID =" + idAlumno, conn);
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

}

