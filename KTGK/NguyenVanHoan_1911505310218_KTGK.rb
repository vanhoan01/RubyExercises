#      Kiểm tra giữa kì
# Họ và tên: Nguyễn Văn Hoàn
# Mã sinh viên: 1911505310218
# Lớp HP: 122CDNNLT01

class PhuongTienGiaoThong
    attr_accessor :id218, :hangSX218, :namSX218, :dongXe218, :giaBan218, :bienSo218, :mauXe218
    def initialize()
        print "Nhập ID: "
        @id218 = gets.chomp
        print "Nhập hãng sản xuất: "
        @hangSX218 = gets.chomp
        print "Enter năm sản xuất: "
        @namSX218 = gets.to_i
        print "Nhập dòng xe: "
        @dongXe218 = gets.chomp
        print "Nhập giá bán: "
        @giaBan218 = gets.to_f
        print "Nhập biển số: "
        @bienSo218 = gets.chomp
        print "Nhập màu xe: "
        @mauXe218 = gets.chomp
    end

    def toString
        return "id=#{@id218}, hangSX= #{@hangSX218}, namSX=#{@namSX218}, dongXe=#{@dongXe218}, giaBan= #{@giaBan218}, bienSo=#{@bienSo218}, mauXe=#{@mauXe218}"
    end
end

class Oto < PhuongTienGiaoThong
    attr_accessor :soChoNgoi218, :kieuDongCo218, :nhienLieu218, :soTuiKhi218, :ngayDangKiem218
    def initialize()
        super
        print "Nhập số chổ ngồi: "
        @soChoNgoi218 = gets.to_i
        print "Nhập kiểu động cơ: "
        @kieuDongCo218 = gets.chomp
        print "Nhập nhiên liệu: "
        @nhienLieu218 = gets.chomp
        print "Nhập kiểu số túi khí: "
        @soTuiKhi218 = gets.to_i
        print "Nhập số ngày đăng kiếm: "
        @ngayDangKiem218 = gets.chomp
    end
    
    def toString
        return "Oto{ #{super},
        soChoNgoi=#{@soChoNgoi218}, kieuDongCo=#{@kieuDongCo218}, nhienLieu=#{@nhienLieu218}, soTuiKhi=#{@soTuiKhi218}, ngayDangKiem=#{@ngayDangKiem218} }"
    end
end

class XeMay  < PhuongTienGiaoThong
    attr_accessor :congSuat218, :dungTichBinhXang218
    def initialize()
        super
        print "Nhập công suất: "
        @congSuat218 = gets.to_i
        print "Nhập dung tích bình xăng: "
        @dungTichBinhXang218 = gets.to_i
    end
    
    def toString
        return "XeMay{#{super}, congSuat=#{@congSuat218}, dungTichBinhXang=#{@dungTichBinhXang218}}"
    end
end

class XeTai < PhuongTienGiaoThong
    attr_accessor :trongTai218
    def initialize()
        super
        print "Nhập trọng tải: "
        @trongTai218 = gets.to_i
    end
    
    def toString
        return "XeTai{#{super}, trongTai=#{@trongTai218}}"
    end
end

class QuanLyPTGT
    attr_accessor :ptgts
    def initialize()
        @ptgts = []
    end
    
    def addDocument(ptgt)
        @ptgts << ptgt
    end

    def showInfor
        @ptgts.each{ |ptgt| puts ptgt.toString}
    end

    def deleteByID(id218)
        if @ptgts.find{|item| item.id218 == id218}
            @ptgts.reject! { |e| e.id218 == id218 }
            return true
        end
        return false
    end

    def searchByHangSX(hangSX218)
        return @ptgts.select {|item| item.hangSX218 == hangSX218}
    end

    def searchByMau(mau)
        return @ptgts.select {|item| item.mauXe218 == mau}
    end

    def searchByBienSo(bienSo218)
        return @ptgts.select {|item| item.bienSo218 == bienSo218}
    end
end

quanLyPTGT  = QuanLyPTGT.new
while true
    puts "\nChuong trinh quan ly phuong tien giao thong"
    puts "Nhập 1: Để Thêm các phương tiện trên vào danh sách"
    puts "Nhập 2: Để Hiển thị danh sách"
    puts "Nhập 3: Để Xoá(theo ID) các phương tiện thuộc các loại trên"
    puts "Nhập 4: Để Tìm phương tiện theo hãng sản xuất, màu, biển số"
    puts "Nhập 5: Để thoát:"
    print "Nhập: "
    line218  = gets.to_i
    case line218
        when 1
            puts "Nhập 1: Để thêm Oto"
            puts "Nhập 2: Để thêm xe máy"
            puts "Nhập 3: Để thêm xe tải"
            print "Nhập: "
            type = gets.to_i
            case type
                when 1
                    oto = Oto.new
                    quanLyPTGT.addDocument(oto)
                    puts "Phương tiện vừa thêm: #{oto.toString}"
                when 2
                    xeMay = XeMay.new
                    quanLyPTGT.addDocument(xeMay)
                    puts "Phương tiện vùa thêm: #{xeMay.toString}"
                when 3
                    xeTai = XeTai.new
                    quanLyPTGT.addDocument(xeTai)
                    puts "Phương tiện vùa thêm: #{xeTai.toString}"
                else
                    puts "Invalid"
            end
        when 2
            puts "Để Hiển thị danh sách:"
            quanLyPTGT.showInfor
        when 3
            print "Nhập id để xóa: "
            id218 = gets.chomp
            if quanLyPTGT.deleteByID(id218)
                puts "Success"
                puts "Danh sách sau khi xóa:"
                quanLyPTGT.showInfor
            else
                puts "Fail"
            end
        when 4
            puts "Nhập 1: Để tìm kiếm theo hãng sản xuất"
            puts "Nhập 2: Để tìm kiếm theo màu"
            puts "Nhập 3: Để tìm kiếm theo biển số"
            print "Nhập: "
            choise = gets.to_i
            case choise
                when 1
                    print "Nhập hãng sx để tìm: "
                    hangSX218 = gets.chomp
                    hangSX218s = quanLyPTGT.searchByHangSX(hangSX218)
                    if hangSX218s.length < 1
                        puts "Không có phương tiện nào"
                    else
                        puts "Danh sách tìm kiếm:"
                        hangSX218s.each{ |ptgt| puts ptgt.toString}
                    end
                when 2
                    print "Nhập màu để tìm: "
                    mau = gets.chomp
                    maus = quanLyPTGT.searchByMau(mau)
                    if maus.length < 1
                        puts "Không có phương tiện nào"
                    else
                        puts "Danh sách tìm kiếm:"
                        maus.each{ |ptgt| puts ptgt.toString}
                    end
                when 3
                    print "Nhập biển số để tìm: "
                    bienSo218 = gets.chomp
                    bienSo218s = quanLyPTGT.searchByBienSo(bienSo218)
                    if bienSo218s.length < 1
                        puts "Không có phương tiện nào"
                    else
                        puts "Danh sách tìm kiếm:"
                        bienSo218s.each{ |ptgt| puts ptgt.toString}
                    end
                else
                    puts "Invalid"
            end
        when 5
            break
        else
            puts "Invalid"
    end
end