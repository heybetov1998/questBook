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

namespace guestBook
{
    public partial class Form1 : Form
    {
        DbConnection connect;
      

        public Form1()
        {
            InitializeComponent();
            connect = new DbConnection("GuestBook");
        }

        private void button3_Click(object sender, EventArgs e)
        {           

            try
            {
                MessageBox.Show("You connected");
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                connect.CloseConnection();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "Insert into guestTable(name,surname,mesaj) values('" + textBox1.Text + "','" + textBox2.Text + "','" + textBox3.Text + "')";
                connect.InsertData(query);
            }
            catch (SqlException ex)
            {
                MessageBox.Show("Data not added "+ex.Message);
            }
            finally
            {
                connect.CloseConnection();
            }

        }

        
        private void button2_Click(object sender, EventArgs e)
        {
         
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = new SqlCommand("select name,surname from dbo.guestTable", connect.connection);
            DataTable tb = new DataTable();
            
            adapter.Fill(tb);
            dataGridView1.DataSource = tb;


        }
    }
}
