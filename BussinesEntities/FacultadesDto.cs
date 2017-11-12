using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinesEntities
{
    public class FacultadesDto
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public FacultadesDto()
        {
            this.AlumnosDto = new HashSet<AlumnosDto>();
            this.CarrerasDto = new HashSet<CarrerasDto>();
            this.ProfesoresDto = new HashSet<ProfesoresDto>();
        }

        public int Codigo { get; set; }
        public string Facultad { get; set; }
        public string Descripcion { get; set; }
        public string EstadoId { get; set; }
        public Nullable<System.DateTime> Fecha_Registro { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AlumnosDto> AlumnosDto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CarrerasDto> CarrerasDto { get; set; }
        public virtual EstadosDto EstadosDto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProfesoresDto> ProfesoresDto { get; set; }
    }
}
