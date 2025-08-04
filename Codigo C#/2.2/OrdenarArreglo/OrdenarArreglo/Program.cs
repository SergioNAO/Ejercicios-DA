using System;

class Program{
    public static int[] OrdenaArreglo(int[] px){
        Array.Sort(px);
        
        return px;
    }

    static void Main(){
        int[] x = { 9, 8, 1, 7, 4, 3 };
        int[] resultado = OrdenaArreglo(x);

        Console.WriteLine("Arreglo ordenado:");
        foreach (int num in resultado){
            Console.WriteLine(num);
        }
    }
}
