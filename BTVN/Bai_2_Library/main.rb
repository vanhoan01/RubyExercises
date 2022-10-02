# Một thư viện cần quản lý các tài liệu bao gồm Sách, Tạp chí, Báo. Mỗi tài liệu gồm có các thuộc tính sau: Mã tài liệu(Mã tài liệu là duy nhất), Tên nhà xuất bản, số bản phát hành.

# Các loại sách cần quản lý thêm các thuộc tính: tên tác giả, số trang.

# Các tạp chí cần quản lý thêm: Số phát hành, tháng phát hành.

# Các báo cần quản lý thêm: Ngày phát hành.

# Yêu cầu 1: Xây dựng các lớp để quản lý tài liệu cho thư viện một cách hiệu quả.

# Yêu cầu 2: Xây dựng lớp QuanLySach có các chức năng sau

# Thêm mới tài liêu: Sách, tạp chí, báo.
# Xoá tài liệu theo mã tài liệu.
# Hiện thị thông tin về tài liệu.
# Tìm kiếm tài liệu theo loại: Sách, tạp chí, báo.
# Thoát khỏi chương trình.  load "./palindrome.rb"

class Document
    attr_accessor :id, :nxb, :number
    def initialize()
        print "Enter ID: "
        @id = gets
        print "Enter nxb:"
        @nxb = gets
        print "Enter number: "
        @number = gets.to_i
    end

    def toString
        return "id=#{@id}, nxb= #{@nxb}, number=#{@number}";
    end
end

class Book < Document
    attr_accessor :author, :numberPage
    def initialize()
        super
        print "Enter author: "
        @author = gets
        print "Enter numberPage: "
        @numberPage = gets.to_i
    end
    
    def toString
        return "Book{ author=#{@author}, numberPage=#{@numberPage}, #{super} }";
    end
end

class Journal  < Document
    attr_accessor :issueNumber, :monthIssue
    def initialize()
        super
        print "Enter issueNumber:"
        @issueNumber = gets.to_i
        print "Enter monthIssue:"
        @monthIssue = gets.to_i
    end
    
    def toString
        return "Journal{ issueNumber=#{@issueNumber}, monthIssue=#{@monthIssue}, #{super} }";
    end
end

class Newspaper < Document
    attr_accessor :dayIssue
    def initialize()
        super
        print "Enter dayIssue: "
        @dayIssue = gets.to_i
    end
    
    def toString
        return "Newspaper{ dayIssue=#{@dayIssue}, #{super} }";
    end
end

class ManagerDocument
    attr_accessor :documents
    def initialize()
        @documents = []
    end
    
    def addDocument(document)
        @documents << document
    end

    def deleteDocument(id)
        if @documents.find{|item| item.id == id}
            @documents.reject! { |e| e.id == id }
            return true
        end
        return false
    end

    def showInfor
        @documents.each{ |document| puts document.toString}
    end

    def searchByBook
        @documents.select {|item| item.is_a?(Book)}.each{ |e| puts e.toString}
    end

    def searchByNewspaper
        @documents.select {|item| item.is_a?(Newspaper)}.each{ |e| puts e.toString}
    end

    def searchByJournal
        @documents.select {|item| item.is_a?(Journal)}.each{ |e| puts e.toString}
    end
end

managerDocument  = ManagerDocument.new
while true
    puts "Application Manager Document"
    puts "Enter 1: To insert document"
    puts "Enter 2: To search document by category: "
    puts "Enter 3: To show information documents"
    puts "Enter 4: To remove document by id"
    puts "Enter 5: To exit:"
    print "Enter: "
    line218  = gets.to_i
    case line218
        when 1
            puts "Enter 1: to insert Book"
            puts "Enter 2: to insert Newspaper"
            puts "Enter 3: to insert Journal"
            print "Enter: "
            type = gets.to_i
            case type
                when 1
                    book = Book.new
                    managerDocument.addDocument(book)
                    puts book.toString
                when 2
                    newspaper = Newspaper.new
                    managerDocument.addDocument(newspaper)
                    puts newspaper.toString
                when 3
                    journal = Journal.new
                    managerDocument.addDocument(journal)
                    puts journal.toString
                else
                    puts "Invalid"
            end
        when 2
            puts "Enter 1 to search book"
            puts "Enter 2 to search newspaper"
            puts "Enter 3 to search journal"
            print "Enter: "
            choise = gets.to_i
            case choise
                when 1
                    managerDocument.searchByBook
                when 2
                    managerDocument.searchByNewspaper
                when 3
                    managerDocument.searchByJournal
                else
                    puts "Invalid"
            end
        when 3
            managerDocument.showInfor
        when 4
            print "Enter id to remove: "
            id = gets
            puts managerDocument.deleteDocument(id)
            managerDocument.showInfor
        when 5
            break
        else
            puts "Invalid"
    end
end