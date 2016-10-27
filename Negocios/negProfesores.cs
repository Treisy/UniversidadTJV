using Entidades;
using Datos;
using System.Data;

namespace Negocios
{
    public class negProfesores
    {
        dalProfesores _ProfesoresDatos = new dalProfesores();

        public DataTable ListarProfesores()
        {
            return _ProfesoresDatos.ListarProfesores();
        }
    }
}
