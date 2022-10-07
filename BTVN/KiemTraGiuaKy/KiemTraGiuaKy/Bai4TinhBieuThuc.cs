using System;
using System.Collections.Generic;
using System.Text;

namespace KiemTraGiuaKy
{
    class Bai4TinhBieuThuc
    {
        public void mainTinhBieuThuc()
        {
            int x218;
            double F;
            Console.Write("Nhap so nguyen x: ");
            x218 = int.Parse(Console.ReadLine());
            F = (x218 * x218 + Math.Pow(Math.E, Math.Abs(x218))+Math.Pow(Math.Sin(x218), 2))/Math.Sqrt(x218*x218+1);
            Console.WriteLine("Gia tri cua bieu thuc F(x) = " + Math.Round(F, 3));
        }
    }
}
