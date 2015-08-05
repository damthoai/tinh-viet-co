using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace EnvisionServices
{
    public partial class ServiceDebug : Form
    {
        public ServiceDebug()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            EnvisionService service = new EnvisionService();
            service.StartDebug();
        }
    }
}
