using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinesEntities
{
    public class CursosDto
    {
        public int Codigo { get; set; }
        public string Curso { get; set; }
        public string Descripcion { get; set; }
        public Nullable<int> Creditos { get; set; }
        public string EstadoId { get; set; }
        public Nullable<System.DateTime> Fecha_Registro { get; set; }

        public virtual EstadosDto EstadosDto { get; set; }
    }
}
