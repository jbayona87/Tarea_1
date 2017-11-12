using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinesEntities
{
    public class ProfesoresDto
    {
        public int Codigo { get; set; }
        public string Nombres { get; set; }
        public string Apellido_Paterno { get; set; }
        public string Apellido_Materno { get; set; }
        public string Numero_Identidad { get; set; }
        public Nullable<System.DateTime> Fecha_Nacimiento { get; set; }
        public Nullable<System.DateTime> Fecha_Registro { get; set; }
        public Nullable<int> CarreraId { get; set; }
        public Nullable<int> FacultadId { get; set; }
        public string EstadoId { get; set; }

        public virtual CarrerasDto CarrerasDto { get; set; }
        public virtual EstadosDto EstadosDto { get; set; }
        public virtual FacultadesDto FacultadesDto { get; set; }
    }
}
