class PhanSo
    attr_accessor :tu, :mau
    def initialize(tu, mau)
        @tu = tu
        @mau = mau
    end

    def toString
        if @mau == 1 || @tu == 0
            return "#{@tu}"
        elsif @mau == 0
            return "Null(Mau phai khac khong)"
        end
        return "#{@tu}/#{@mau}"
    end

    def rutGon
        a = @tu
        b = @mau

        a = a.abs
        b = b.abs
        
        usln = 1
        if a == 0 || b==0
            usln = a+b
        else
            while a!=b
                if a>b
                    a = a-b
                else
                    b = b-a
                end
            end
            usln = a
        end
        @tu/=usln
        @mau/=usln
    end
    def +(obj)
        tuSo = self.tu*obj.mau + obj.tu*self.mau
        mauSo = self.mau*obj.mau
        ps = PhanSo.new(tuSo, mauSo)
        ps.rutGon
        return ps
    end
    def -(obj)
        tuSo = self.tu*obj.mau - obj.tu*self.mau
        mauSo = self.mau*obj.mau
        ps = PhanSo.new(tuSo, mauSo)
        ps.rutGon
        return ps
    end
    def *(obj)
        tuSo = self.tu*obj.tu
        mauSo = self.mau*obj.mau
        ps = PhanSo.new(tuSo, mauSo)
        ps.rutGon
        return ps
    end
    def /(obj)
        tuSo = self.tu*obj.mau
        mauSo = self.mau*obj.tu
        ps = PhanSo.new(tuSo, mauSo)
        ps.rutGon
        return ps
    end
end

def congHaiPhanSo(ps1, ps2)
    tuSo = ps1.tu*ps2.mau + ps2.tu*ps1.mau
    mauSo = ps1.mau*ps2.mau
    ps = PhanSo.new(tuSo, mauSo)
    ps.rutGon
    return ps
end

def truHaiPhanSo(ps1, ps2)
    tuSo = ps1.tu*ps2.mau - ps2.tu*ps1.mau
    mauSo = ps1.mau*ps2.mau
    ps = PhanSo.new(tuSo, mauSo)
    ps.rutGon
    return ps
end

def nhanHaiPhanSo(ps1, ps2)
    tuSo = ps1.tu*ps2.tu
    mauSo = ps1.mau*ps2.mau
    ps = PhanSo.new(tuSo, mauSo)
    ps.rutGon
    return ps
end

def chiaHaiPhanSo(ps1, ps2)
    tuSo = ps1.tu*ps2.mau
    mauSo = ps1.mau*ps2.tu
    ps = PhanSo.new(tuSo, mauSo)
    ps.rutGon
    return ps
end

def nhap
    print "Nhap tu so: "
    tu = gets.to_i
    print "Nhap mau so: "
    mau = gets.to_i
    while mau == 0
        print "Nhap mau so:"
        mau = gets.to_i
    end
    ps = PhanSo.new(tu, mau)
    return ps
end
puts "Nhap Phan so thu nhat: "
ps1 = nhap
puts "Nhap Phan so thu hai: "
ps2 = nhap

congPS = congHaiPhanSo(ps1, ps2)
puts "\nCong: #{ps1.toString} + #{ps2.toString} = #{congPS.toString}"
puts "overloading cong: #{(ps1+ps2).toString}"

truPS = truHaiPhanSo(ps1, ps2)
puts "\nTru: #{ps1.toString} - #{ps2.toString} = #{truPS.toString}"
puts "overloading tru: #{(ps1-ps2).toString}"

nhanPS = nhanHaiPhanSo(ps1, ps2)
puts "\nNhan: #{ps1.toString} * #{ps2.toString} = #{nhanPS.toString}"
puts "overloading nhan: #{(ps1*ps2).toString}"

chiaPS = chiaHaiPhanSo(ps1, ps2)
puts "\nChia: #{ps1.toString} : #{ps2.toString} = #{chiaPS.toString}"
puts "overloading chia: #{(ps1/ps2).toString}"