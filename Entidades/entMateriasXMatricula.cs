using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entMateriasXMatricula
    {
        //Atributos
        private int _id;
        private int _idMatricula;
        private int _idMateria;

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
    }
}
