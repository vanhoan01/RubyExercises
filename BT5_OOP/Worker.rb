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