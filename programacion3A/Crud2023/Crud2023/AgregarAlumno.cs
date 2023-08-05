using Crud2023.Clases;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Crud2023
{
    public partial class AgregarAlumno : Form
    {
        public AgregarAlumno()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Alumno alumno = new Alumno
            {
                Carne = Convert.ToInt32(txtCarne.Text),
                Celular = Convert.ToInt32(txtCelular.Text),
                PrimerApellido = txtPrimerApellido.Text,
                PrimerNombre = txtPrimerNombre.Text,
                SegundoApellido = txtSegundoApellido.Text,
                SegundoNombre = txtSegundoNombre.Text
            };

            Form1 formularioInicial = new Form1();
            formularioInicial.AgregarAlumno(alumno);
            LimpiarForm();
        }

        private void LimpiarForm()
        {
            txtCarne.Text = "";
            txtCelular.Text = "";
            txtPrimerApellido.Text = "";
            txtPrimerNombre.Text = "";
            txtSegundoApellido.Text = "";
            txtSegundoNombre.Text = "";
            txtTelefonoCasa.Text = "";
        }
    }
}
