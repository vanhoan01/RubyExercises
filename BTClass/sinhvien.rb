# Tạo class sinhvien
# Thiết kế các phương thức cơ bản của class
# Tạo phương thức nhập điểm Toán Lý Hoá của sinh viên, tính điểm trung bình
# In ra các thông tin của sinh viên

class SinhVien
    attr_accessor :toan, :ly, :hoa
    def initialize
        print "Nhap diem toan: "
        @toan = gets.to_f
        print "Nhap diem ly: "
        @ly = gets.to_f
        print "Nhap diem hoa: "
        @hoa = gets.to_f
    end

    def grade_info
        puts("Diem Toan: #{@toan}")
        puts("Diem Ly: #{@ly}")
        puts("DIem Hoa: #{@hoa}")
        puts("Diem trung binh: #{average_grade}")
    end

    def average_grade
        return ((@toan + @ly + @hoa)/3).round(2)
    end
 end

 sv = SinhVien.new
 puts("\nThong tin sinh vien:")
 sv.grade_info