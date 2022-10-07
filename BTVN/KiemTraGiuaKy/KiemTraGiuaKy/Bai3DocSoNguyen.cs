using System;
using System.Collections.Generic;
using System.Text;

namespace KiemTraGiuaKy
{
    class Bai3DocSoNguyen
    {
        public void mainDocSoNguyen()
        {
            int n218;
            int a218, b218, c218, d218;
            do
            {
                Console.Write("Nhap so nguyen n (0<n=<9999): ");
                n218 = int.Parse(Console.ReadLine());
            } while (n218 <= 0 || n218 > 9999);
            a218 = n218 % 10;

            n218 /= 10;
            if (n218 > 0)
                b218 = n218 % 10;
            else b218 = -1;

            n218 /= 10;
            if (n218 > 0)
                c218 = n218 % 10;
            else c218 = -1;
            n218 /= 10;
            if (n218 > 0)
                d218 = n218 % 10;
            else d218 = -1;
            //hang ngin
            if (d218 >= 0)
                switch (d218)
                {
                    case 0: Console.Write("Khong nghin "); break;
                    case 1: Console.Write("Mot nghin "); break;
                    case 2: Console.Write("Hai nghin "); break;
                    case 3: Console.Write("Ba nghin "); break;
                    case 4: Console.Write("Bon nghin "); break;
                    case 5: Console.Write("Nam nghin "); break;
                    case 6: Console.Write("Sau nghin "); break;
                    case 7: Console.Write("Bay nghin "); break;
                    case 8: Console.Write("Tam nghin "); break;
                    case 9: Console.Write("Chin nghin "); break;
                }
            //hang tram
            if(c218 >= 0)
                switch (c218)
                {
                    case 0: Console.Write("Khong tram "); break;
                    case 1: Console.Write("Mot tram "); break;
                    case 2: Console.Write("Hai tram "); break;
                    case 3: Console.Write("Ba tram "); break;
                    case 4: Console.Write("Bon tram "); break;
                    case 5: Console.Write("Nam tram "); break;
                    case 6: Console.Write("Sau tram "); break;
                    case 7: Console.Write("Bay tram "); break;
                    case 8: Console.Write("Tam tram "); break;
                    case 9: Console.Write("Chin tram "); break;
                }
            //hang chuc
            if(b218 >= 0)
                switch (b218)
                {
                    case 0: Console.Write("Khong chuc "); break;
                    case 2: Console.Write("Hai chuc "); break;
                    case 3: Console.Write("Ba chuc "); break;
                    case 4: Console.Write("Bon chuc "); break;
                    case 5: Console.Write("Nam chuc "); break;
                    case 6: Console.Write("Sau chuc "); break;
                    case 7: Console.Write("Bay chuc "); break;
                    case 8: Console.Write("Tam chuc "); break;
                    case 9: Console.Write("Chin chuc "); break;
                }
            //hang don vi
            if(a218 >= 0)
                switch (a218)
                {
                    case 0: Console.Write("Khong don vi "); break;
                    case 1: Console.Write("Mot don vi "); break;
                    case 2: Console.Write("Hai don vi "); break;
                    case 3: Console.Write("Ba don vi "); break;
                    case 4: Console.Write("Bon don vi "); break;
                    case 5: Console.Write("Nam don vi "); break;
                    case 6: Console.Write("Sau don vi "); break;
                    case 7: Console.Write("Bay don vi "); break;
                    case 8: Console.Write("Tam don vi "); break;
                    case 9: Console.Write("Chin don vi "); break;
                }

            Console.WriteLine("\n\nNhan xet: Neu khong gioi han thi phai tao mot bien n tinh so chu so cua n");
        }
    }
}
