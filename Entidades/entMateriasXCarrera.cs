using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entMateriasXCarrera
    {
        //Atributos
        private int _id;
        private float _costo;
        private int _idCarrera;
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

        public float Costo
        {
            get
            {
                return _costo;
            }

            set
            {
                _costo = value;
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
