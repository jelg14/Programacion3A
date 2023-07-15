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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

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
