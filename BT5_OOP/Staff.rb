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