using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entTiposXAlumno
    {
        private int _id;
        private string _descripcion;
        private int _idAlumno;
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
