using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    public class dalProfesores
    {
        entProfesores profesorEnt = new entProfesores();
        ConexionBD conexion = new ConexionBD();
        SqlCommand cmd = new SqlCommand();
        bool mensaje;

        //Métodos
        public DataTable ListarProfesores()
        {
            DataTable datos = new DataTable();
            entProfesores profesores = new entProfesores();
            ConexionBD conexion = new ConexionBD();

            try
            {
                conexion.conectar();
                conexion.sqlQuery("sp_listado_profesores");
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
