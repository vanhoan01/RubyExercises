class Man
    attr_accessor :name, :gender, :haircolor, :height, :weight, :phone, :email
    def initialize(name, gender, haircolor, height, weight, phone, email)
        @name = name
        @gender = gender
        @haircolor = haircolor
        @height = height
        @weight = weight
        @phone = phone
        @email = email
    end

    def show
        puts "Ho va ten: #{@name}"
        puts "Gioi tinh: #{@gender}"
        puts "Mau toc: #{@haircolor}"
        puts "Chieu cao: #{@height}"
        puts "Can nang: #{@weight}"
        puts "So dien thoai: #{@phone}"
        puts "Email: #{@email}"
    end
end

class Student < Man
    attr_accessor :school, :student_id, :classs, :grade, :toan, :ly, :hoa, :dtb
    def initialize(name, gender, haircolor, height, weight, phone, email, school, student_id, classs, toan, ly, hoa)
        super(name, gender, haircolor, height, weight, phone, email)
        @school = school
        @student_id = student_id
        @classs = classs
        @toan = toan.to_f
        @ly = ly.to_f
        @hoa = hoa.to_f
        @dtb = average_grade
    end

    def average_grade
        return ((@toan + @ly + @hoa)/3).round(2)
    end

    def show
        super
        puts "Truong: #{@school}"
        puts "Ma sinh vien: #{@student_id}"
        puts "Lop: #{@classs}" 
        puts "Diem Toan: #{@toan}"
        puts "Diem Ly: #{@ly}"
        puts "DIem Hoa: #{@hoa}"
        puts "Diem trung binh: #{@dtb}\n\n"
    end
end

svs = []
sv1 = Student.new("Vo Van A", "Nam", "black", 1.80, 60, "0894551111", "vana@gmail.com", "UTE", "1911555555555", "19T2", 9, 10, 10)
sv2 = Student.new("Vo Van B", "Nam", "black", 1.80, 60, "0894551111", "vanb@gmail.com", "UTE", "1911555555556", "19T2", 7, 10, 9)
sv3 = Student.new("Vo Van C", "Nam", "black", 1.80, 60, "0894551111", "vanc@gmail.com", "UTE", "1911555555557", "19T2", 7, 10, 8)
sv4 = Student.new("Vo Van D", "Nam", "black", 1.80, 60, "0894551111", "vand@gmail.com", "UTE", "1911555555558", "19T2", 9, 10, 9)
svs << sv1
svs << sv2
svs << sv3
svs << sv4
svs = svs.sort { |a, b| b.dtb <=> a.dtb }
svs.each{ |sv| sv.show}