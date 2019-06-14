using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebApp1DAL.DTO;

namespace WebApp1DAL.DAL
{
    public class ChinchillaDAL
    {
        private static List<Chinchilla> chinchillas = new List<Chinchilla>()
        {
            new Chinchilla() { Id = 1, Familia = "Chinchillidae", Locacion = "Bolivia", Edad = 4, Genero = "Macho"},
            new Chinchilla() { Id = 2, Familia = "Chinchillidae", Locacion = "Chile", Edad = 2, Genero = "Hembra"},
            new Chinchilla() { Id = 3, Familia = "Chinchillidae", Locacion = "Perú", Edad = 4, Genero = "Macho"},
            new Chinchilla() { Id = 4, Familia = "Chinchillidae", Locacion = "Bolivia", Edad = 3, Genero = "Macho"},
        };

        public static bool Add(Chinchilla chinchilla)
        {
            try
            {
                chinchillas.Add(chinchilla);
            }
            catch (Exception)
            {
                return false;
            }

            return true;

        }

        public static List<Chinchilla> GetAll()
        {
            return chinchillas;
           
        }
    }
}
