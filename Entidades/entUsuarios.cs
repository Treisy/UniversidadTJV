using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entUsuarios
    {
        //Atributos
        private int _idUsuario;
        private string _cedula;
        private string _nombreUsuario;
        private string _contrasena;
        private string _nombre;
        private string _primerApellido;
        private string _segundoApellido;

        //Constructor
        private entUsuarios()
        {
            IdUsuario = 0;
            Cedula = string.Empty;
            NombreUsuario = string.Empty;
            Contrasena = string.Empty;
            Nombre = string.Empty;
            PrimerApellido = string.Empty;
            SegundoApellido = string.Empty;
        }


        //Encapsulamientos
        public int IdUsuario
        {
            get
            {
                return _idUsuario;
            }

            set
            {
                _idUsuario = value;
            }
        }

        public string Cedula
        {
            get
            {
                return _cedula;
            }

            set
            {
                _cedula = value;
            }
        }

        public string NombreUsuario
        {
            get
            {
                return _nombreUsuario;
            }

            set
            {
                _nombreUsuario = value;
            }
        }

        public string Contrasena
        {
            get
            {
                return _contrasena;
            }

            set
            {
                _contrasena = value;
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

        public string SegundoApellido
        {
            get
            {
                return _segundoApellido;
            }

            set
            {
                _segundoApellido = value;
            }
        }
    }
}
