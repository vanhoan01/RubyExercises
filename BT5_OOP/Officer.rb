class Officer
    attr_accessor :name, :age, :gender, :address
    def initialize()
        puts "Enter name: "
        @name = gets
        puts "Enter age:"
        @age = gets.to_i
        puts "Enter gender: "
        @gender = gets
        puts "Enter address: "
        @address = gets
    end

    def toString
        return "name=#{@name}
                , age= #{@age}
                , gender=#{@gender}
                , address=#{@address}";
    end
 end