using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entMaterias
    {
        //Atributos
        private int _idMateria;
        private string _nombre;
        private string _codigo;

        //Constructor
        private entMaterias()
        {
            IdMateria = 0;
            Nombre = string.Empty;
            Codigo = string.Empty;
        }

        //Encapsulamientos
        public int IdMateria
        {
            get
            {
                return _idMateria;
            }

            set
            {
                _idMateria = value;
            }
        }

        public string Nombre
        {
            get
            {
                return _nombre;
            }

            set
            {
                _nombre = value;
            }
        }

        public string Codigo
        {
            get
            {
                return _codigo;
            }

            set
            {
                _codigo = value;
            }
        }
    }
}
