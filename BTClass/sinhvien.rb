class SinhVien
    attr_accessor :toan, :ly, :hoa, :dtb
    def initialize(toan, ly, hoa)
        @toan = toan.to_f
        @ly = ly.to_f
        @hoa = hoa.to_f
        average_grade
    end

    def average_grade
        @dtb = ((@toan + @ly + @hoa)/3).round(2)
    end

    def grade_info
        puts "Diem Toan: #{@toan}"
        puts "Diem Ly: #{@ly}"
        puts "DIem Hoa: #{@hoa}"
        puts "Diem trung binh: #{@dtb}\n\n" 
    end
 end

 sv = SinhVien.new(8, 9, 10)
 sv.grade_info