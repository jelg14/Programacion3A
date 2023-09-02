using Crud2023.Clases;
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

namespace Crud2023
{
    public partial class Form1 : Form
    {
        private Stack<Alumno> PilaAlumno = new Stack<Alumno>();

        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("click realizado en boton guardar");
            PilaAlumno.Push(new Alumno
            { Carne = 464,
              Celular = 646886,
              PrimerNombre = "Cristiano",
                SegundoNombre = "Lionel",
                PrimerApellido ="Dos Santos",
                SegundoApellido = "Messi",
                TelefonoCasa = 16384768});
            LlenarData();
        }

        public void LlenarData()
        {
            DataSet ds = new DataSet();
            ds = ObtenerAlumnos();
            BindingSource bs = new BindingSource();
            bs.DataSource = ds.Tables[0]; ;
            dataGridView1.DataSource = bs;
            dataGridView1.Refresh();
            dataGridView1.ReadOnly = true;
        }

        public DataSet ObtenerAlumnos() {
            try {
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = @"Server=DESKTOP-C8E8KOB\SQLEXPRESS;Database=PrograIII2023COPY;Trusted_Connection=true";
                    conn.Open();
                    var select = "SELECT top 500 * FROM Alumno";
                    var dataAdapter = new SqlDataAdapter(select, conn);
                    var commandBuilder = new SqlCommandBuilder(dataAdapter);
                    var ds = new DataSet();
                    dataAdapter.Fill(ds);
                    conn.Close();
                    return ds;
                 
                }
            } catch (Exception) {
                throw;
            }
        }


        private void agregarAlumnoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using( var agregar = new AgregarAlumno ()) {
                agregar.ShowDialog();
            }
        }

        private void buscarAlumnoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (var buscar = new BuscarAlumno())
            {
                buscar.ShowDialog();
            }
        }

        private void editarAlumnoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (var editar = new EditarAlumno())
            {
                editar.ShowDialog();
            }
        }

        public void AgregarAlumno (Alumno alumno)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = @"Server=DESKTOP-C8E8KOB\SQLEXPRESS;Database=PrograIII2023COPY;Trusted_Connection=true";
                    conn.Open();
                    SqlCommand insertCommand = new SqlCommand("INSERT INTO Alumno"+
                        " VALUES (@PrimerNombre,@SegundoNombre,@PrimerApellido,@SegundoApellido"+
                        ",@Carne,@Celular,@TelefonoCasa)", conn);
                    insertCommand.Parameters.Add(new SqlParameter("Carne", alumno.Carne));
                    insertCommand.Parameters.Add(new SqlParameter("PrimerNombre", alumno.PrimerNombre));
                    insertCommand.Parameters.Add(new SqlParameter("SegundoNombre", alumno.SegundoNombre));
                    insertCommand.Parameters.Add(new SqlParameter("PrimerApellido", alumno.PrimerApellido));
                    insertCommand.Parameters.Add(new SqlParameter("SegundoApellido", alumno.SegundoApellido));
                    insertCommand.Parameters.Add(new SqlParameter("Celular", alumno.Celular));
                    insertCommand.Parameters.Add(new SqlParameter("TelefonoCasa", alumno.TelefonoCasa));
                    insertCommand.ExecuteNonQuery();
                    LlenarData();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
