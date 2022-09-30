class Engineer < Officer
    attr_accessor :branch
    def initialize()
        super
        @branch = gets
    end
    
    def toString
        return "Engineer{ branch=#{@branch}
                , #{super} }";
    end
 end