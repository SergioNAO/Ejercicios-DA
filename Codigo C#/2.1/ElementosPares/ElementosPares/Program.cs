using System;
using System.Collections.Generic;

class Program
{
    public static int[] ElementosPares(int[] px){
        List<int> resultado = new List<int>();

        foreach (int num in px){
            if (num % 2 == 0){
                resultado.Add(num);
            }
        }

        return resultado.ToArray();
    }

    static void Main(){
        int[] x = { 1, 2, 3, 10, 22, 33 };
        int[] res = ElementosPares(x);

        Console.WriteLine("Elementos pares:");

        foreach (int num in res){
            Console.WriteLine(num);
        }
    }
}
