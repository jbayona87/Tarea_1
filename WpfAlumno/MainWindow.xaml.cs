using RegistroAlumnos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfAlumno.ViewModel;

namespace WpfAlumno
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        MantenimientoDeAlumnos mantenimientoDeAlumnos = new MantenimientoDeAlumnos();
        public MainWindow()
        {
            InitializeComponent();
            mantenimientoDeAlumnos.CargarProductos();
            this.DataContext = mantenimientoDeAlumnos;
        }

        private void btnprueba_Click(object sender, RoutedEventArgs e)
        {
            this.mantenimientoDeAlumnos.GrabarAlumno();
            //mantenimientoDeAlumnos.CargarProductos();
        }

        private void btnActualizar_Click(object sender, RoutedEventArgs e)
        {
            this.mantenimientoDeAlumnos.ActualizarAlumno();
        }

        private void btnEliminar_Click(object sender, RoutedEventArgs e)
        {
            this.mantenimientoDeAlumnos.EliminaAlumno();
            //mantenimientoDeAlumnos.CargarProductos();
        }
    }
}
