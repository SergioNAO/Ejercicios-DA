using System;

class Program
{
    public static string Mes(DateTime f)
    {
        string[] meses = {
            "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"
        };

        return meses[f.Month - 1];
    }

    static void Main()
    {
        DateTime fecha1 = Convert.ToDateTime("24/04/2001");
        DateTime fecha2 = Convert.ToDateTime("16/08/2001");

        Console.WriteLine(Mes(fecha1)); 
        Console.WriteLine(Mes(fecha2)); 
    }
}
