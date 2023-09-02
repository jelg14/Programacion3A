using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Crud2023.Clases;

namespace Crud2023.Interfaces
{
    internal interface IAlumno1: ITest
    {
         int GetIdAlumno(Alumno alumno);
         Alumno GetAlumno(int id);
         List<Alumno> GetAllAlumnos();
         void SaveAlumno(Alumno alumno);
         void DeleteAlumno(int id);
         void UpdateAlumno(Alumno alumno, bool forze = false);

    }

    interface ITest
    {
        string Name { get; set; }
        string LastName { get; set; }
    }
}
