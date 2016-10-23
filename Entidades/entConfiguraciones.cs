using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class entConfiguraciones
    {
        //Atributos
        private int _idConfiguracion;
        private string _nombre_institucion;
        private string _logo;
        private string _cuatrimestre;

        //Encapsulamientos
        public int IdConfiguracion
        {
            get
            {
                return _idConfiguracion;
            }

            set
            {
                _idConfiguracion = value;
            }
        }

        public string Nombre_institucion
        {
            get
            {
                return _nombre_institucion;
            }

            set
            {
                _nombre_institucion = value;
            }
        }

        public string Logo
        {
            get
            {
                return _logo;
            }

            set
            {
                _logo = value;
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

        

    }
}
