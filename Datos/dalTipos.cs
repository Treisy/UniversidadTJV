using System;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    public class dalTipos
    {
        entTipos tipoEnt = new entTipos();
        ConexionBD conexion = new ConexionBD();
        SqlCommand cmd = new SqlCommand();
        bool mensaje;

        //Métodos
        public DataTable ListarTipos()
        {
            DataTable datos = new DataTable();
            //entLugares lugares = new entLugares();
            ConexionBD conexion = new ConexionBD();

            try
            {
                conexion.conectar();
                conexion.sqlQuery("sp_listado_tipos");
                datos = conexion.ejecutarConsultaSQL();
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex);
            }
            return datos;
        }
    }
}
