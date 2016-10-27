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
    public class dalAlumnos
    {
    //	entAlumnos alumnoEnt = new entAlumnos();
    //	bool mensaje;
    //	SqlConnection cnn;
    //	ConexionBD conexion = new ConexionBD();
    //	SqlCommand cmd = new SqlCommand();

    //	// Constructor
    //	public dalAlumnos()
    //	{
    //		cnn = new SqlConnection(conexion.GetConexion());
    //	}

    //	// Métodos
    //	public bool AgregarAlumno(entAlumnos alumnoEnt)
    //	{
    //		cmd.Connection = cnn;
    //		cmd.CommandType = CommandType.StoredProcedure;
    //		cmd.CommandText = "sp_agregar_alumno";
    //		try
    //		{
				//// Crear el campo
				//cmd.Parameters.Add(new SqlParameter("@cedula", SqlDbType.VarChar, 30));
				//cmd.Parameters.Add(new SqlParameter("@nombre", SqlDbType.VarChar, 30));
				//cmd.Parameters.Add(new SqlParameter("@primer_apellido", SqlDbType.VarChar, 30));
				//cmd.Parameters.Add(new SqlParameter("@segundo_apellido", SqlDbType.VarChar, 30));
				//cmd.Parameters.Add(new SqlParameter("@fecha_nacimiento", SqlDbType.DateTime));

				//// Asignación de los valores
    //            cmd.Parameters["@cedula"].Value = alumnoEnt.Cedula;
    //            cmd.Parameters["@nombre"].Value = alumnoEnt.Nombre;
    //            cmd.Parameters["@primer_apellido"].Value = alumnoEnt.PrimerApellido;
    //            cmd.Parameters["@segundo_apellido"].Value = alumnoEnt.SegundoApellido;
    //            cmd.Parameters["@fecha_nacimiento"].Value = alumnoEnt.FechaNacimiento;

    //            cnn.Open();
    //            cmd.ExecuteNonQuery();
    //            mensaje = true;
    //		}
    //		catch (SqlException e)
    //		{
    //			mensaje = false;
    //            Console.WriteLine(e);
    //		}
    //		finally
    //        {
    //            if(cnn.State == ConnectionState.Open)
    //            {
    //                cnn.Close();
    //            }
    //            cmd.Parameters.Clear();
    //        }
    //        return mensaje;
    //	}

    //	public bool ModificarAlumno(entAlumnos AlumnoEnt)
    //	{
    //		cmd.Connection = cnn;
    //		cmd.CommandType = CommandType.StoredProcedure;
    //		cmd.CommandText = "sp_modificar_alumno";
    //		try
    //		{
				//// Crear el campo
				//cmd.Parameters.Add(new SqlParameter("@cedula", SqlDbType.VarChar, 30));
				//cmd.Parameters.Add(new SqlParameter("@nombre", SqlDbType.VarChar, 30));
				//cmd.Parameters.Add(new SqlParameter("@primer_apellido", SqlDbType.VarChar, 30));
				//cmd.Parameters.Add(new SqlParameter("@segundo_apellido", SqlDbType.VarChar, 30));
				//cmd.Parameters.Add(new SqlParameter("@fecha_nacimiento", SqlDbType.DateTime));

				//// Asignación de los valores
    //            cmd.Parameters["@cedula"].Value = AlumnoEnt.Cedula;
    //            cmd.Parameters["@nombre"].Value = AlumnoEnt.Nombre;
    //            cmd.Parameters["@primer_apellido"].Value = AlumnoEnt.PrimerApellido;
    //            cmd.Parameters["@segundo_apellido"].Value = AlumnoEnt.SegundoApellido;
    //            cmd.Parameters["@fecha_nacimiento"].Value = alumnoEnt.FechaNacimiento;

    //            cnn.Open();
    //            cmd.ExecuteNonQuery();
    //            mensaje = true;
    //		}
    //		catch (SqlException e)
    //		{
    //			mensaje = false;
    //            Console.WriteLine(e);
    //		}
    //		finally
    //        {
    //            if(cnn.State == ConnectionState.Open)
    //            {
    //                cnn.Close();
    //            }
    //            cmd.Parameters.Clear();
    //        }
    //        return mensaje;
    //	}

    //	public bool EliminarAlumno(entAlumnos AlumnoEnt)
    //    {
    //    	cmd.Connection = cnn;
    //		cmd.CommandType = CommandType.StoredProcedure;
    //		cmd.CommandText = "sp_eliminar_alumno";
    //        try
    //        {

    //        }
    //        catch
    //        {

    //        }
    //        finally
    //        {

    //        }
    //        return mensaje;
    //    }

    //    public DataTable ListarAlumnos()
    //    {
    //        DataSet dts = new DataSet();
    //        try
    //        {

    //        }
    //        catch
    //        {

    //        }
    //        finally
    //        {

    //        }
    //        return (dts.Tables[""]);
    //    }

    //    public entAlumnos ConsultarAlumno()
    //    {
    //        try
    //        {
    //            ConsultarTiposAlumnos();
    //        }
    //        catch
    //        {

    //        }
    //        finally
    //        {

    //        }
    //        return alumnoEnt;
    //    }
    //    private void ConsultarTiposAlumnos()
    //    {
    //        //select tipos de alumnas
    //        //ID Descripcion
    //        Entidades.entTiposAsociados tipo;

    //        tipo = new entTiposAsociados(1, "");
    //        this.alumnoEnt.TiposAsociados.Add(tipo);
    //    }
    }
}
