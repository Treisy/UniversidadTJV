using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entAlumnos
    {
        //Atributos
        private int _idAlumno;
        private string _cedula;
        private string _nombre;
        private string _primerApellido;
        private string _segundoApellido;
        private DateTime _fechaNacimiento;
        private int _idCarrera;

        //Constructor
        private entAlumnos()
        {
            IdAlumno = 0;
            Cedula = string.Empty;
            Nombre = string.Empty;
            PrimerApellido = string.Empty;
            SegundoApellido = string.Empty;
            FechaNacimiento = DateTime.Now;
            IdCarrera = 0;
        }

        //Encapsulamientos
        public int IdAlumno
        {
            get
            {
                return _idAlumno;
            }

            set
            {
                _idAlumno = value;
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

        public DateTime FechaNacimiento
        {
            get
            {
                return _fechaNacimiento;
            }

            set
            {
                _fechaNacimiento = value;
            }
        }

        public int IdCarrera
        {
            get
            {
                return _idCarrera;
            }

            set
            {
                _idCarrera = value;
            }
        }
    }
}
