using System;
using System.Collections.Generic;
using System.Text;

namespace KiemTraGiuaKy
{
    class Bai2TimSo
    {
        public void mainBai2TimSo()
        {
            int[] a218 = new int[100];
            int n218, c218, i218;
            do
            {
                Console.Write("Nhap c la so phan tu cua mang [1, 100]: ");
                c218 = int.Parse(Console.ReadLine());
            } while (c218 < 1 || c218 > 100);
            Console.WriteLine("Nhap {0} phan tu:", c218);
            for (i218 = 0; i218 < c218; ++i218)
            {
                Console.Write("a[{0}] = ", i218 + 1);
                a218[i218] = int.Parse(Console.ReadLine());
            }
            Console.Write("Nhap so n can tim: ");
            n218 = int.Parse(Console.ReadLine());
            int kt218 = 0;
            for (i218 = 0; i218 < c218; ++i218)
            {
                if(a218[i218] == n218)
                {
                    Console.WriteLine("So {0} co trong mang A, o vi tri thu {1}", n218, (i218 + 1));
                    kt218 = 1;
                }
            }
            if(kt218 == 0)
            {
                Console.WriteLine("So {0} khong co trong mang A", n218);
            }
        }
    }
}
