using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinesEntities.Interfaces
{
    public interface IRegistrarAlumnos
    {
        List<AlumnosDto> ListarAlumnos();        
        AlumnosDto RegistrarAlumno(AlumnosDto nuevoAlumno);
        void ModificarAlumno(AlumnosDto actualizarAlumno);
        void EliminarAlumno(AlumnosDto eliminaAlumno);
    }
}
