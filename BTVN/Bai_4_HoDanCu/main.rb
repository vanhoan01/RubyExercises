# Để quản lý các hộ dân cư trong một khu phố, người ta cần các thông tin sau: Số thành viên trong gia đình, Số nhà, thông tin mỗi cá nhân trong gia đình. Với mỗi cá nhân, người ta quản lý các thông tin sau: Họ tên, Tuổi, Nghề nghiệp, số chứng minh nhân dân(duy nhất cho mỗi người).

# Yêu cầu 1: Hãy xây dựng lớp Nguoi để quản lý thông tin của mỗi cá nhân.

# Yêu cầu 2: Xây dựng lớp HoGiaDinh để quản lý thông tin của từng hộ gia đình.

# Yêu cầu 2: Xây dựng lớp KhuPho để quản lý các thông tin của từng hộ gia đình.

# Yêu cầu 3: Nhập n hộ dân. (n nhập từ bàn phím), hiển thị thông tin của các hộ trong khu phố.

class Person
    attr_accessor :name, :age, :job, :passport
    def initialize()
        print "Enter name: "
        @name = gets.chomp
        print "Enter age: "
        @age = gets.to_i
        print "Enter job: "
        @job = gets.chomp
        print "Enter passport: "
        @passport = gets.chomp
    end

    def toString
        return "name=#{@name}, age= #{@age}, job=#{@job}, passport=#{@passport}"
    end
end

class Family
    attr_accessor :persons, :address

    def initialize()
        print "Enter number person of family: "
        n = gets.to_i
        @persons = []
        for i in 1..n
            puts "\nEnter person #{i}:"
            person = Person.new
            @persons << person
        end
        print "Enter address: "
        @address = gets.chomp
    end
    
    def toString
        str = " "
        i = 1
        @persons.each{ |person| 
            str += "person#{i}{#{person.toString}}\n"
            i += 1
        }
        return str
    end
end

class Town
    attr_accessor :families
    def initialize()
        print "Enter number family of town: "
        n = gets.to_i
        @families = []
        for i in 1..n
            puts "\nEnter family #{i}:"
            family = Family.new
            @families << family
        end
    end
    
    def toString
        str = " "
        i = 1
        @families.each{ |family| 
            str += "Family#{i}{#{family.toString}}\n"
            i += 1
        }
        return str
    end
end

town  = Town.new
puts "\nShow Info Town:"
puts town.toString