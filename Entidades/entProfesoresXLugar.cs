using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entProfesoresXLugar
    {
        //Atributos
        private int _id;
        private int _idProfesor;
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

        public int IdProfesor
        {
            get
            {
                return _idProfesor;
            }

            set
            {
                _idProfesor = value;
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
