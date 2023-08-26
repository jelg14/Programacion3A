using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
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
    }
}
