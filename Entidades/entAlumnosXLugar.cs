using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entAlumnosXLugar
    {
        //Atributos
        private int _id;
        private int _idAlumno;
        private int _idLugar;

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

        public int IdLugar
        {
            get
            {
                return _idLugar;
            }

            set
            {
                _idLugar = value;
            }
        }
    }
}
