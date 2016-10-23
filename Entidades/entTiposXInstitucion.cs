using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entTiposXInstitucion
    {
        //Atributos
        private int _id;
        private string _descripcion;
        private int _idConfiguracion;
        private int _idTipo;

        //Encapsulamientos
        public int Id
        {
            get
            {
                return _id;
            }

            set
            {
                _id = value;
            }
        }

        public string Descripcion
        {
            get
            {
                return _descripcion;
            }

            set
            {
                _descripcion = value;
            }
        }

        public int IdConfiguracion
        {
            get
            {
                return _idConfiguracion;
            }

            set
            {
                _idConfiguracion = value;
            }
        }

        public int IdTipo
        {
            get
            {
                return _idTipo;
            }

            set
            {
                _idTipo = value;
            }
        }
    }
}
