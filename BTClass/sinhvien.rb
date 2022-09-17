# Tạo class sinhvien
# Thiết kế các phương thức cơ bản của class
# Tạo phương thức nhập điểm Toán Lý Hoá của sinh viên, tính điểm trung bình
# In ra các thông tin của sinh viên

class SinhVien
    def initialize(msv, hovaten, diachi)
       @sv_msv = msv
       @sv_hovaten = hovaten
       @sv_diachi = diachi
    end

    def nhapDiem_dtb
        print "Nhap diem toan: "
        @sv_toan = gets.to_f
        print "Nhap diem ly: "
        @sv_ly = gets.to_f
        print "Nhap diem hoa: "
        @sv_hoa = gets.to_f
        $sv_dtb = (@sv_toan + @sv_ly + @sv_hoa)/3
    end

    def thongTin
        puts("Ma sinh vien: #{@sv_msv}")
        puts("Ho va ten: #{@sv_hovaten}")
        puts("Dia chi: #{@sv_diachi}")
        puts("Diem Toan: #{@sv_toan}")
        puts("Diem Ly: #{@sv_ly}")
        puts("DIem Hoa: #{@sv_hoa}")
        puts("Diem trung binh: #{$sv_dtb}")
    end
 end

 sv = SinhVien.new("SV001", "Nguyễn Văn Hoàn", "Hải Châu, Đà Nẵng")
 sv.nhapDiem_dtb
 puts("\nThong tin sinh vien:")
 sv.thongTin