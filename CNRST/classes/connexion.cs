using System;
using System.Data;
using System.Data.SqlClient;
namespace CNRST.classes
{
    public class connexion
    {
        public string erreur { get; set; }
        public SqlConnection cx = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog=CNRST; Integrated Security=True;");
        SqlCommand comm;
        public void MAJQueries(string request)
        {
            comm = new SqlCommand(request, cx);
            try
            {
                if (cx.State == ConnectionState.Closed) cx.Open();
                comm.ExecuteNonQuery();
            } catch (Exception ex) { erreur = ex.Message; }
            finally { if (cx.State != ConnectionState.Closed) cx.Close(); }
        }
        public DataTable SelectQueries(string request)
        {
            DataTable dt = new DataTable();
            comm = new SqlCommand(request, cx);
            try
            {
                if (cx.State == ConnectionState.Closed) cx.Open();
                dt.Load(comm.ExecuteReader());
                if (dt.Rows.Count == 0) { erreur = "Inexistant!"; }
            }
            catch (Exception ex) { erreur = ex.Message; }
            finally { if (cx.State != ConnectionState.Closed) cx.Close(); }
            return dt;
        }
    }
}