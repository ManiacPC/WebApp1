using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApp1DAL.DTO
{
    public class Chinchilla
    {
        private int id;
        private string locacion;
        private string familia;
        private string genero;
        private int edad;

        public string Locacion
        {
            get { return locacion; }
            set { locacion = value; }
        }

        public string Familia
        {
            get { return familia; }
            set { familia = value; }
        }

        public string Genero
        {
            get { return genero; }
            set { genero = value; }
        }

        public int Edad
        {
            get { return edad; }
            set { edad = value; }
        }

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string NombreMostrar
        {
            get { return $"{this.id} - {this.Locacion} - {this.genero}"; }
        }

        public override string ToString()
        {
            return $"{this.Familia} - {this.Locacion}";
        }
    }
}
