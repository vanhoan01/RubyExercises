using System;
using System.Collections.Generic;
using System.Text;

namespace KiemTraGiuaKy
{
    class TinhTong
    {
        public void mainTinhTong()
        {
            int n218;
            long S218 = 0;
            long k218 = 1;
            do
            {
                Console.Write("Nhap so nguyen n (5<n<100): ");
                n218 = int.Parse(Console.ReadLine());
            } while (n218 <= 5 || n218 >= 100);
            for(int i = 1; i < n218; i++)
            {
                k218 *= i;
                S218 += k218;
            }
            Console.WriteLine("Gia tri S = " + S218);
        }
    }
}
