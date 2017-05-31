using System.Data.SqlClient;
using System.Windows.Forms;

namespace guestBook
{
    class DbConnection
    {
        public SqlConnection connection;
        public DbConnection(string dbName)
        {
            connection = new SqlConnection();
            connection.ConnectionString = @"Data Source=P302\SQLEXPRESS;Initial Catalog="+dbName+";Integrated Security=True;Pooling=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            OpenConnection();
        }
        private void OpenConnection()
        {
            connection.Open();
        }
        public void CloseConnection()
        {
            connection.Close();
        }

        public void InsertData(string query)
        {
            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();
            CloseConnection();
            MessageBox.Show("Data added");
        }

        public void SelectAllData(string query)
        {
            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();
            CloseConnection();
        }
        
    }
}
