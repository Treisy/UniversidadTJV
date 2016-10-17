using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entProfesores
    {
        //Atributos
        private int _id;
        private string _nombre;
        private string _primerApellido;

        //Constructor
        private entProfesores()
        {
            Id = 0;
            Nombre = string.Empty;
            PrimerApellido = string.Empty;
        }

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

        public string PrimerApellido
        {
            get
            {
                return _primerApellido;
            }

            set
            {
                _primerApellido = value;
            }
        }
    }

}
