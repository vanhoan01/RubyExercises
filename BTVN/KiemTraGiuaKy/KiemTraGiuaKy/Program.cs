using System;

namespace KiemTraGiuaKy
{
    class Program
    {
        static void Main(string[] args)
        {
            int bai218;
            do
            {
                Console.Clear();
                Console.WriteLine("Menu");
                Console.WriteLine("Bai 1. Tinh gia tri S");
                Console.WriteLine("Bai 2. Tim so nguyen trong mang");
                Console.WriteLine("Bai 3. Doc so nguyen nhap vao");
                Console.WriteLine("Bai 4. Tinh gia tri bieu thuc");
                Console.Write("Chon 0. Thoat!\n\nBan muon chon bai: ");
                bai218 = Int32.Parse(Console.ReadLine());
                Console.Clear();
                switch (bai218)
                {
                    case 1:
                        TinhTong b1 = new TinhTong();
                        b1.mainTinhTong();
                        break;
                    case 2:
                        Bai2TimSo b2 = new Bai2TimSo();
                        b2.mainBai2TimSo();
                        break;
                    case 3:
                        Bai3DocSoNguyen b3 = new Bai3DocSoNguyen();
                        b3.mainDocSoNguyen();
                        break;
                    case 4:
                        Bai4TinhBieuThuc b4 = new Bai4TinhBieuThuc();
                        b4.mainTinhBieuThuc();
                        break;
                    case 0:
                        Console.WriteLine("Ket thuc!"); ;
                        break;
                    default:
                        Console.WriteLine("Nhap vao khong hop le!");
                        break;
                }
                Console.Write("\nNhan Enter");
                Console.ReadLine();
            } while (bai218 != 0);

        }
    }
}
