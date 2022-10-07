# Để quản lý hồ sơ học sinh của trường THPT nhà trường cần các thông tin sau: Lớp,  và các thông tin về cá nhân của mỗi học sinh.

# Mỗi học sinh có các thông tin sau: Họ tên, tuổi, quê quán.

# Yêu cầu 1: Xây dựng HocSinh để quản lý thông tin của mỗi học sinh.

# Yêu cầu 2: Xây dựng các phương thức thêm, hiển thị thông tin của mỗi học sinh.

# Yêu cầu 3: Cài đặt chương trình có các chức năng sau:

# Thêm học sinh mới.
# Hiện thị các học sinh 20 tuổi.
# Cho biết số lượng các học sinh có tuổi là 23 và quê ở DN.

class Student
    attr_accessor :name, :age, :hometown, :classStudent
    def initialize()
        print "Enter name: "
        @name = gets.chomp
        print "Enter age:"
        @age = gets.to_i
        print "Enter hometown: "
        @hometown = gets.chomp
        print "Enter classStudent: "
        @classStudent = gets.to_i
    end

    def toString
        return "Student{name=#{@name}, age= #{@age}, hometown= #{@hometown}, classStudent= #{@classStudent}}"
    end
end

class School
    attr_accessor :students
    def initialize()
        @students = []
    end
    
    def add(student)
        @students << student
    end

    def getStudent20YearOld
        return @students.select{|item| item.age == 20}
    end

    def countStudent23YearOldInDN
        return @students.count {|item| item.age == 23 && item.hometown == "Da Nang"}
    end
end

school = School.new
while true
    puts "Application Manager School"
    puts "Enter 1: To insert student"
    puts "Enter 2: Show Students 20 Year Old"
    puts "Enter 3: Count Student 23 Year Old and In DN"
    puts "Enter 4: To exit:"
    print "Enter: "
    line218  = gets.to_i
    case line218
        when 1
            student = Student.new()
            school.add(student)
            student.toString
        when 2
            puts "Show Students 20 Year Old: "
            school.getStudent20YearOld.each{|item| puts item.toString}
        when 3
            puts "Count Student 23 Year Old and In DN: #{school.countStudent23YearOldInDN}"
        when 4
            break
        else
            puts "Invalid"
    end
end