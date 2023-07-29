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
            BindingSource bs = new BindingSource();
            bs.DataSource = PilaAlumno;
            dataGridView1.DataSource = bs;
            dataGridView1.Refresh();
        }

        public DataSet ObtenerAlumnos() {
            try {
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
    }
}
