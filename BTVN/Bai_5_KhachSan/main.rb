# Để quản lý khách hàng đến thuê phòng của một khách sạn, người ta cần các thông tin sau: Số ngày thuê, loại phòng, thông tin cá nhân của những người thuê phòng.

# Biết rằng phòng loại A có giá 500$, phòng loại B có giá 300$ và loại C có giá 100$.

# Với mỗi cá nhân cần quản lý các thông tin sau: Họ tên, tuổi, số chứng minh nhân dân.

# Yêu cầu 1: Hãy xây dựng lớp Nguoi để quản lý thông tin cá nhân của những người thuê phòng.

# Yêu cầu 2: Xây dựng lớp KhachSan để quản lý các thông tin về các phòng trong khác sạn.

# Yêu cầu 3: Xây dựng các phương thức thêm mới, xoá khách theo số chứng minh nhân dân. Tính tiền thuê phòng cho khách(xác định khách bằng số chứng minh nhân dân) dựa vào công thức: (số ngày thuê * giá của từng loại phòng)

# Thoát khỏi chương trình.  load "./palindrome.rb"

class Room
    attr_accessor :category, :price
    def initialize(category, price)
        @category = category
        @price = price
    end

    def toString
        return "category=#{@category}, price= #{@price}"
    end
end

class RoomA < Room
    def initialize()
        super("A", 500)
    end
    
    def toString
        return "RoomA{ #{super} }"
    end
end

class RoomB < Room
    def initialize()
        super("B", 300)
    end
    
    def toString
        return "RoomB{ #{super} }"
    end
end

class RoomC < Room
    def initialize()
        super("C", 100)
    end
    
    def toString
        return "RoomC{ #{super} }"
    end
end

class Person
    attr_accessor :name, :age, :passport, :room, :numberRent
    def initialize(room)
        print "Enter name: "
        @name = gets
        print "Enter age: "
        @age = gets.to_i
        print "Enter passport: "
        @passport = gets
        @room = room
        print "Enter numberRent: "
        @numberRent = gets.to_i
    end
    
    def toString
        return "Person{ name=#{@name}, age=#{@age}, passport=#{@passport}, #{@room.toString}, 
        numberRent=#{@numberRent}}"
    end
end

class Hotel
    attr_accessor :persons
    def initialize()
        @persons = []
    end
    
    def add(person)
        @persons << person
    end

    def delete(passport)
        if @persons.find{|item| item.passport == passport}
            @persons.reject! { |e| e.passport == passport }
            return true
        end
        return false
    end

    def show
        @persons.each{ |person| puts person.toString}
    end

    def calculator(passport)
        person = @persons.find{|item| item.passport == passport}
        if person.nil?
            return 0
        end
        return person.room.price * person.numberRent
    end
end

hotel = Hotel.new
while true
    puts "Application Manager Candidate"
    puts "Enter 1: To insert person for rent"
    puts "Enter 2: To remove person by passport"
    puts "Enter 3: To calculator price by passport"
    puts "Enter 4: To show infor"
    puts "Enter 5: To exit:"
    print "Enter: "
    line218  = gets.to_i
    case line218
        when 1
            puts "Choise a to rent room type A"
            puts "Choise b to rent room type B"
            puts "Choise c to rent room type C"
            while true
                print "Enter: "
                choise = gets.chomp
                case choise
                    when "a"
                        room = RoomA.new
                        break
                    when 'b'
                        room = RoomB.new
                        break
                    when 'c'
                        room = RoomC.new
                        break
                    else
                        puts "Invalid"
                end
            end
            person = Person.new(room)
            hotel.add(person)
            person.toString
        when 2
            print "Enter passport to delete: "
            passport = gets
            puts hotel.delete(passport)
            hotel.show
        when 3
            print "Enter passport to calculator price: "
            passport = gets
            puts "Price: #{hotel.calculator(passport)}"
        when 4
            hotel.show
        when 5
            break
        else
            puts "Invalid"
    end
end