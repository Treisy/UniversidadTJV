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
    public class dalConfiguraciones
    {
    	//entConfiguraciones configuracionEnt = new entConfiguraciones();
     //   bool mensaje;
     //   SqlConnection cnn;
     //   ConexionBD conexion = new ConexionBD();
     //   SqlCommand cmd = new SqlCommand();
     //   //Constructor
     //   public dalConfiguraciones()
     //   {
     //       cnn = new SqlConnection(conexion.GetConexion());
     //   }

     //   //Métodos
     //   public bool AgregarConfiguracion(entConfiguraciones configuracionEnt)
     //   {
     //       cmd.Connection = cnn;
     //       cmd.CommandType = CommandType.StoredProcedure;
     //       cmd.CommandText = "sp_agregar_configuracion";
     //       try
     //       {
     //           cmd.Parameters.Add(new SqlParameter("@nombre_institucion", SqlDbType.VarChar, 30));
     //           cmd.Parameters.Add(new SqlParameter("@logo", SqlDbType.VarChar, 30));
     //           cmd.Parameters.Add(new SqlParameter("@cuatrimestre", SqlDbType.VarChar, 30));

     //           cmd.Parameters["@nombre_institucion"].Value = configuracionEnt.NombreInstitucion;
     //           cmd.Parameters["@logo"].Value = configuracionEnt.Logo;
     //           cmd.Parameters["@cuatrimestre"].Value = configuracionEnt.Cuatrimestre;

     //           cnn.Open();
     //           cmd.ExecuteNonQuery();
     //           mensaje = true;
     //       }
     //       catch (SqlException e)
     //       {
     //           mensaje = false;
     //           Console.WriteLine(e);
     //       }
     //       finally
     //       {
     //           if(cnn.State == ConnectionState.Open)
     //           {
     //               cnn.Close();
     //           }
     //           cmd.Parameters.Clear();
     //       }
     //       return mensaje;
     //   }

     //   public bool ModificarConfiguracion(entConfiguraciones configuracionEnt)
     //   {
     //       cmd.Connection = cnn;
     //       cmd.CommandType = CommandType.StoredProcedure;
     //       cmd.CommandText = "sp_modificar_configuracion";
     //       try
     //       {
     //           cmd.Parameters.Add(new SqlParameter("@nombre_institucion", SqlDbType.VarChar, 30));
     //           cmd.Parameters.Add(new SqlParameter("@logo", SqlDbType.VarChar, 30));
     //           cmd.Parameters.Add(new SqlParameter("@cuatrimestre", SqlDbType.VarChar, 30));

     //           cmd.Parameters["@nombre_institucion"].Value = configuracionEnt.NombreInstitucion;
     //           cmd.Parameters["@logo"].Value = configuracionEnt.Logo;
     //           cmd.Parameters["@cuatrimestre"].Value = configuracionEnt.Cuatrimestre;

     //           cnn.Open();
     //           cmd.ExecuteNonQuery();
     //           mensaje = true;
     //       }
     //       catch (SqlException e)
     //       {
     //           mensaje = false;
     //           Console.WriteLine(e);
     //       }
     //       finally
     //       {
     //           if(cnn.State == ConnectionState.Open)
     //           {
     //               cnn.Close();
     //           }
     //           cmd.Parameters.Clear();
     //       }
     //       return mensaje;
     //   }

     //   public bool EliminarLugar(entConfiguraciones configuracionEnt)
     //   {
     //       cmd.Connection = cnn;
     //       cmd.CommandType = CommandType.StoredProcedure;
     //       cmd.CommandText = "sp_eliminar_configuracion";
     //       try
     //       {

     //       }
     //       catch
     //       {

     //       }
     //       finally
     //       {

     //       }
     //       return mensaje;
     //   }

     //   public DataTable ListarConfiguraciones()
     //   {
     //       DataSet dts = new DataSet();
     //       try
     //       {

     //       }
     //       catch
     //       {

     //       }
     //       finally
     //       {

     //       }
     //       return (dts.Tables[""]);
     //   }

     //   public entConfiguraciones ConsultarConfiguracion()
     //   {
     //       try
     //       {

     //       }
     //       catch
     //       {

     //       }
     //       finally
     //       {

     //       }
     //       return configuracionEnt;
     //   }
    }
}
