using Entidades;
using Datos;
using System.Data;

namespace Negocios
{
    public class negTipos
    {
        dalTipos _TiposDatos = new dalTipos();
        public DataTable ListarTipos()
        {
            return _TiposDatos.ListarTipos();
        }
    }
}
