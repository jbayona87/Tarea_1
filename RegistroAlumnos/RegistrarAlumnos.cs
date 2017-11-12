using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataModel;
using BussinesEntities;
using BussinesEntities.Interfaces;

namespace RegistroAlumnos
{
    public class RegistrarAlumnos : IRegistrarAlumnos
    {
        public List<AlumnosDto> ListarAlumnos()
        {
            try
            {
                using (UniversidadEntities dbContext = new UniversidadEntities())
                {
                    List<AlumnosDto> Query = (from n in dbContext.Alumnos
                                              join m in dbContext.Facultades on n.FacultadId equals m.Codigo
                                              join c in dbContext.Carreras on n.CarreraId equals c.Codigo
                                              join e in dbContext.Estados on n.EstadoId equals e.Codigo
                                              select new AlumnosDto
                                              {
                                                  Codigo = n.Codigo,
                                                  Nombres = n.Nombres,
                                                  Apellido_Paterno = n.Apellido_Paterno,
                                                  Apellido_Materno = n.Apellido_Materno,
                                                  Numero_Identidad = n.Numero_Identidad,
                                                  Fecha_Nacimiento = n.Fecha_Nacimiento,
                                                  Pais = n.Pais,
                                                  Direccion = n.Direccion,
                                                  Distrito = n.Distrito,
                                                  Estado_Civil = n.Estado_Civil,
                                                  Telefono = n.Telefono,
                                                  FacultadId = n.FacultadId,
                                                  CarreraId = n.CarreraId,
                                                  Fecha_Registro = n.Fecha_Registro,
                                                  EstadoId = n.EstadoId
                                                  //NombreFacultad = m.Facultad,
                                                  //NombreCarrera = c.Carrera,
                                                  //NombreEstado = e.Estado
                                              }).ToList();
                    return Query;
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public AlumnosDto RegistrarAlumno(AlumnosDto nuevoAlumno)
        {
            using (UniversidadEntities dbContext = new UniversidadEntities())
            {
                Alumnos alumnos = new Alumnos();
                alumnos.Nombres = nuevoAlumno.Nombres;
                alumnos.Apellido_Paterno = nuevoAlumno.Apellido_Paterno;
                alumnos.Apellido_Materno = nuevoAlumno.Apellido_Materno;
                alumnos.Numero_Identidad = nuevoAlumno.Numero_Identidad;
                alumnos.Fecha_Nacimiento = nuevoAlumno.Fecha_Nacimiento;
                alumnos.Pais = nuevoAlumno.Pais;
                alumnos.Direccion = nuevoAlumno.Direccion;
                alumnos.Distrito = nuevoAlumno.Distrito;
                alumnos.Estado_Civil = nuevoAlumno.Estado_Civil;
                alumnos.Telefono = nuevoAlumno.Telefono;
                alumnos.FacultadId = nuevoAlumno.FacultadId;
                alumnos.CarreraId = nuevoAlumno.CarreraId;
                alumnos.Fecha_Registro = nuevoAlumno.Fecha_Registro;
                alumnos.EstadoId = nuevoAlumno.EstadoId;
                dbContext.Alumnos.Add(alumnos);
                dbContext.SaveChanges();
                return ConvertirAlumnoA_DTO(alumnos);
            }
        }

        public void ModificarAlumno(AlumnosDto actualizarAlumno)
        {
            using (UniversidadEntities dbContext = new UniversidadEntities())
            {
                Alumnos modificarAlumno = (from n in dbContext.Alumnos
                                           where n.Codigo == actualizarAlumno.Codigo
                                           select n).FirstOrDefault();
                modificarAlumno.Nombres = actualizarAlumno.Nombres;
                modificarAlumno.Apellido_Paterno = actualizarAlumno.Apellido_Paterno;
                modificarAlumno.Apellido_Materno = actualizarAlumno.Apellido_Materno;
                modificarAlumno.Numero_Identidad = actualizarAlumno.Numero_Identidad;
                modificarAlumno.Fecha_Nacimiento = actualizarAlumno.Fecha_Nacimiento;
                modificarAlumno.Pais = actualizarAlumno.Pais;
                modificarAlumno.Direccion = actualizarAlumno.Direccion;
                modificarAlumno.Distrito = actualizarAlumno.Distrito;
                modificarAlumno.Estado_Civil = actualizarAlumno.Estado_Civil;
                modificarAlumno.Telefono = actualizarAlumno.Telefono;
                modificarAlumno.FacultadId = actualizarAlumno.FacultadId;
                modificarAlumno.CarreraId = actualizarAlumno.CarreraId;
                modificarAlumno.Fecha_Registro = actualizarAlumno.Fecha_Registro;
                modificarAlumno.EstadoId = actualizarAlumno.EstadoId;
                dbContext.Entry(modificarAlumno);
                dbContext.SaveChanges();
                //return ConvertirAlumnoA_DTO(modificarAlumno);
            }
        }

        private AlumnosDto ConvertirAlumnoA_DTO(Alumnos alumno)
        {
            AlumnosDto alumnoRegistrado = new AlumnosDto();
            alumnoRegistrado.Codigo = alumno.Codigo;
            alumnoRegistrado.Nombres = alumno.Nombres;
            alumnoRegistrado.Apellido_Paterno = alumno.Apellido_Paterno;
            alumnoRegistrado.Apellido_Materno = alumno.Apellido_Materno;
            alumnoRegistrado.Numero_Identidad = alumno.Numero_Identidad;
            alumnoRegistrado.Fecha_Nacimiento = alumno.Fecha_Nacimiento;
            alumnoRegistrado.Pais = alumno.Pais;
            alumnoRegistrado.Direccion = alumno.Direccion;
            alumnoRegistrado.Distrito = alumno.Distrito;
            alumnoRegistrado.Estado_Civil = alumno.Estado_Civil;
            alumnoRegistrado.Telefono = alumno.Telefono;
            alumnoRegistrado.FacultadId = alumno.FacultadId;
            alumnoRegistrado.CarreraId = alumno.CarreraId;
            alumnoRegistrado.Fecha_Registro = alumno.Fecha_Registro;
            alumnoRegistrado.EstadoId = alumno.EstadoId;
//            alumnoRegistrado.NombreFacultad = alumno.Facultades.Facultad;

            //alumno.Facultades.ToList()
            //    .ForEach(
            //    x =>
            //    alumnoRegistrado.NombreFacultad.Add(x.Facultad)
            //    );
            return alumnoRegistrado;
        }
        
        public void EliminarAlumno(AlumnosDto eliminaAlumno)
        {
            using (UniversidadEntities dbContext = new UniversidadEntities())
            {
                Alumnos eliminarAlumno = (from n in dbContext.Alumnos
                                           where n.Codigo == eliminaAlumno.Codigo
                                           select n).FirstOrDefault();
                dbContext.Alumnos.Remove(eliminarAlumno);
                dbContext.SaveChanges();
            }
        }
    }
}
