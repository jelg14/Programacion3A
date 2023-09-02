using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Crud2023.Clases;
using Crud2023.Interfaces;

namespace Crud2023.Utils
{
    class OperacionesAlumno : IAlumno1
    {
        public string Name { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public string LastName { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public void DeleteAlumno(int id)
        {
            throw new NotImplementedException();
        }

        public List<Alumno> GetAllAlumnos()
        {
            throw new NotImplementedException();
        }

        public Alumno GetAlumno(int id)
        {
            throw new NotImplementedException();
        }

        public int GetIdAlumno(Alumno alumno)
        {
            throw new NotImplementedException();
        }

        public void SaveAlumno(Alumno alumno)
        {
            throw new NotImplementedException();
        }

        public void UpdateAlumno(Alumno alumno, bool forze = false)
        {
            throw new NotImplementedException();
        }
    }
}
