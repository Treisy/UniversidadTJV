using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entMatriculas
    {
        //Atributos
        private int _idMatricula;
        private string _cuatrimestre;
        private int _idAlumno;

        //Encapsulamientos
        public int IdMatricula
        {
            get
            {
                return _idMatricula;
            }

            set
            {
                _idMatricula = value;
            }
        }

        public string Cuatrimestre
        {
            get
            {
                return _cuatrimestre;
            }

            set
            {
                _cuatrimestre = value;
            }
        }

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
    }
}
