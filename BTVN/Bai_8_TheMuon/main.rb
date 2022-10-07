# Thư viện trung tâm đại học quốc gia có nhu cầu quản lý việc mượn, trả sách. Sinh viên đăng ký tham gia mượn sách thông qua thẻ mà thư viện cung cấp.

# Với mỗi thẻ sẽ lưu các thông tin sau: Mã phiếu mượn, ngày mượn, hạn trả, số hiệu sách, và các thông tin cá nhân của sinh viên mượn sách. Các thông tin của sinh viên mượn sách bao gồm: Họ tên, tuổi, lớp.

# Để đơn giản cho ứng dụng console. Chúng ta mặc định ngày mượn, ngày trả là số nguyên dương.

# Yêu cầu 1: Xây dựng lớp SinhVien để quản lý thông tin của mỗi sinh viên.

# Yêu cầu 2: Xây dựng lớp TheMuon để quản lý việc mượn trả sách của các sinh viên.

# Yêu cầu 3: Xây dựng các phương thức: Thêm, xoá theo mã phiếu mượn và hiển thị thông tin các thẻ mượn.

class Student
    attr_accessor :name, :age, :class
    def initialize()
        print "Enter name: "
        @name = gets.chomp
        print "Enter age:"
        @age = gets.to_i
        print "Enter class: "
        @class = gets.chomp
    end

    def toString
        return "Student{name=#{@name}, age= #{@age}, class=#{@class}}"
    end
end

class Card
    attr_accessor :id, :borrowDate, :paymentDate, :bookId, :student
    def initialize()
        print "Enter id: "
        @id = gets.chomp
        print "Enter borrowDate: "
        @borrowDate = gets.to_i
        print "Enter paymentDate: "
        @paymentDate = gets.to_i
        print "Enter bookId: "
        @bookId = gets.chomp
        puts "Enter student: "
        @student = Student.new
    end
    
    def toString
        return "Card{ id=#{@id}, borrowDate=#{@borrowDate}, paymentDate=#{paymentDate},
        bookId = #{bookId}, #{@student.toString} }"
    end
end

class ManagerCard
    attr_accessor :cards
    def initialize()
        @cards = []
    end
    
    def addCard(card)
        @cards << card
    end

    def deleteCard(id)
        if @cards.find{|item| item.id == id}
            @cards.reject! { |e| e.id == id }
            return true
        end
        return false
    end

    def showInfor
        @cards.each{ |card| puts card.toString}
    end
end

managerCard  = ManagerCard.new
while true
    puts "Application Manager Card"
    puts "Enter 1: To insert Card"
    puts "Enter 2: To remove Card by id"
    puts "Enter 3: To show information cards"
    puts "Enter 4: To exit:"
    print "Enter: "
    line218  = gets.to_i
    case line218
        when 1
            card = Card.new
            managerCard.addCard(card)
            puts card.toString
        when 2
            print "Enter id to delete: "
            id = gets.chomp
            if managerCard.deleteCard(id)
                puts "Success"
                managerCard.showInfor
            else
                puts "Fail"
            end
        when 3
            managerCard.showInfor
        when 4
            break
        else
            puts "Invalid"
    end
end