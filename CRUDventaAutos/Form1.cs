using System.Data;
using System.Data.SqlClient;

namespace CRUDventaAutos
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        public DataSet ObtenerAlumnos()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = @"Server=localhost\\SQLEXPRESS;Database=PrograIII2023COPY;Trusted_Connection=true";
                    conn.Open();
                    var select = "SELECT top 500 * FROM Alumno";
                    var dataAdapter = new SqlDataAdapter(select, conn);
                    var commandBuilder = new SqlCommandBuilder(dataAdapter);
                    var ds = new DataSet();
                    return ds;

                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}