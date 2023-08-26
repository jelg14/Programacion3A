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
    public partial class EditarAlumno : Form
    {
        private int idAlumno = 0;
        public EditarAlumno()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            DataSet dsAlumno = new DataSet();
            utilidades.search se = new utilidades.search();
            dsAlumno = se.BuscarAlumnoCarnet(int.Parse(txtCarnet.Text));
            LlenarFormulario(dsAlumno);

        }

        private void LlenarFormulario(DataSet dsAlumno)
        {
            foreach (DataRow filaAlumno in dsAlumno.Tables[0].Rows)
            {
                idAlumno = Convert.ToInt16(filaAlumno["id"]);
                txtPrimerNombre.Text = filaAlumno["PrimerNombre"].ToString();
                txtSegundoNombre.Text = filaAlumno["SegundoNombre"].ToString();
                txtSegundoApellido.Text = filaAlumno["SegundoApellido"].ToString();
                txtPrimerApellido.Text = filaAlumno["PrimerApellido"].ToString();
                txtCarnet.Text = filaAlumno["Carnet"].ToString();
                txtCelular.Text = filaAlumno["Celular"].ToString();
                txtTelefonoCasa.Text = filaAlumno["TelefonoCasa"].ToString();
            }
        }

       
        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click_2(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void EditarAlumno_Load(object sender, EventArgs e)
        {

        }
    }
}
