class Officer
    attr_accessor :name218, :age218, :gender218, :address218
    def initialize()
        puts "Enter name: "
        @name218 = gets
        puts "Enter age:"
        @age218 = gets.to_i
        puts "Enter gender: "
        @gender218 = gets
        puts "Enter address: "
        @address218 = gets
    end

    def toString
        return "name=#{@name218}
                , age218= #{@age218}
                , gender=#{@gender218}
                , address=#{@address218}";
    end
end

class Staff < Officer
    attr_accessor :task
    def initialize()
        super
        puts "Enter task: "
        @task = gets
    end
    
    def toString
        return "Staff{ task=#{@task}
                , #{super} }";
    end
end

class Engineer < Officer
    attr_accessor :branch
    def initialize()
        super
        puts "Enter brand:"
        @branch = gets
    end
    
    def toString
        return "Engineer{ branch=#{@branch}
                , #{super} }";
    end
end

class Worker < Officer
    attr_accessor :level
    def initialize()
        super
        puts "Enter level: "
        @level = gets
    end
    
    def toString
        return "Worker{
                level=#{@level}
                , #{super} }";
    end
end

class ManagerOfficer
    attr_accessor :officers
    def initialize()
        @officers = Array.new
    end
    
    def addOfficer(officer)
        @officers << officer
    end

    def searchOfficerByName(name218)
        return @officers.select {|item| item.name218 == name218}
    end

    def showListInforOfficer
        @officers.each{ |of| of.toString}     
    end
end

managerOfficer = ManagerOfficer.new
while true
    puts "Application Manager Officer"
    puts "Enter 1: To insert officer"
    puts "Enter 2: To search officer by name: "
    puts "Enter 3: To show information officers"
    puts "Enter 4: To exit:"
    puts "Enter:"
    line218  = gets.to_i
    case line218
        when 1
            puts "Enter 1: to insert Enginner"
            puts "Enter 2: to insert Worker"
            puts "Enter 3: to insert Staff"
            type = gets.to_i
            case type
                when 1
                    engineer = Engineer.new
                    managerOfficer.addOfficer(engineer)
                    puts engineer.toString
                when 2
                    worker = Worker.new
                    managerOfficer.addOfficer(worker);
                    puts worker.toString
                when 3
                    staff = Staff.new
                    managerOfficer.addOfficer(staff);
                    puts staff.toString
                else
                    puts "Invalid"
            end
        when 2
            puts "Enter name to search: "
            name218 = gets
            managerOfficer.searchOfficerByName(name218).each{ |of| of.toString}
        when 3
            managerOfficer.showListInforOfficer
        when 4
            return
        else
            puts "Invalid"
    end
end