using System;
class Program
{
    public static string ConcatenaArreglo(object[] px)
    {
        return string.Join(",", px);
    }

    static void Main()
    {
        object[] x = { 100, 200, 300, "Hola", 4.2, "Mundo"};
        string resultado = ConcatenaArreglo(x);
        Console.WriteLine(resultado);
    }
}

