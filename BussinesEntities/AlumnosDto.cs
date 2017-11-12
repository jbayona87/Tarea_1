using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinesEntities
{
    public class AlumnosDto
    {
        public int Codigo { get; set; }
        public string Nombres { get; set; }
        public string Apellido_Paterno { get; set; }
        public string Apellido_Materno { get; set; }
        public string Numero_Identidad { get; set; }
        public Nullable<System.DateTime> Fecha_Nacimiento { get; set; }
        public string Pais { get; set; }
        public string Direccion { get; set; }
        public string Distrito { get; set; }
        public string Estado_Civil { get; set; }
        public string Telefono { get; set; }
        public Nullable<int> FacultadId { get; set; }
        public Nullable<int> CarreraId { get; set; }
        public Nullable<System.DateTime> Fecha_Registro { get; set; }
        public string EstadoId { get; set; }
        //public string NombreFacultad { get; set; }
        //public string NombreCarrera { get; set; }
        //public string NombreEstado { get; set; }


        //public virtual CarrerasDto CarrerasDto { get; set; }
        //public virtual FacultadesDto FacultadesDto { get; set; }
        //public virtual EstadosDto EstadosDto { get; set; } 
    }
}
