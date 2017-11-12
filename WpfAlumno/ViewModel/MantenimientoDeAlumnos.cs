using BussinesEntities;
using BussinesEntities.Interfaces;
using RegistroAlumnos;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfAlumno.ViewModel
{
    public class MantenimientoDeAlumnos : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string name)
        {
            PropertyChangedEventHandler handler = this.PropertyChanged;
            if (handler != null)
            {
                handler(this, new PropertyChangedEventArgs(name));
            }
        }

        private AlumnosDto _AlumnoDto = new AlumnosDto();

        public AlumnosDto alumnosDto
        {
            get { return _AlumnoDto; }
            set
            {
                this._AlumnoDto = value;
                this.OnPropertyChanged("alumnosDto");
            }
        }

        public ObservableCollection<AlumnosDto> AlumnosResgistrados { get; set; }
        private IRegistrarAlumnos _registrarAlumnos = new RegistrarAlumnos();

        public void CargarProductos()
        {
            this.AlumnosResgistrados = new ObservableCollection<AlumnosDto>();
            _registrarAlumnos.ListarAlumnos().ForEach(x => this.AlumnosResgistrados.Add(x));
            //_registrarAlumnos.ListarAlumnos();
        }

        public void GrabarAlumno()
        {
            AlumnosDto nuevoAlumnoRegistrado = this._registrarAlumnos.RegistrarAlumno(this.alumnosDto);
            this.AlumnosResgistrados.Add(nuevoAlumnoRegistrado);            
            this.alumnosDto = new AlumnosDto();
        }

        public void ActualizarAlumno()
        {
            this._registrarAlumnos.ModificarAlumno(this.alumnosDto);
            this.alumnosDto = new AlumnosDto();
        }

        public void EliminaAlumno()
        {
            this._registrarAlumnos.EliminarAlumno(this.alumnosDto);
            this.alumnosDto = new AlumnosDto();
        }
    }
}
