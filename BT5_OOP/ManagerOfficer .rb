class ManagerOfficer
    attr_accessor :officers
    def initialize()
        @officers = []
    end
    
    def addOfficer(officer)
        @officers << officer
    end

    def searchOfficerByName(name)
        result = @officers.select {|item| item.name == name}
        return result
    end

    def showListInforOfficer
        @officers.each{ |of| of.toString}        
    end
 end