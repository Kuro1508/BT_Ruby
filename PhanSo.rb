class Tinhtoan 
    attr_accessor :ps1,:ps2
    def initialize(ps1,ps2)
        @ps1 = ps1
        @ps2 = ps2     
    end
    def Cong
        puts "Tổng: #{(ps1.t*ps2.m+ps2.t*ps1.m)}/#{(ps1.m*ps2.m)}"
    end
    def Tru
        puts "Hiệu #{(ps1.t*ps2.m-ps2.t*ps1.m)}/#{(ps1.m*ps2.m)}" 
    end
    def Tich
        puts "Tích: #{(ps1.t*ps2.t)}/#{(ps1.m*ps2.m)}" 
    end
    def Thuong
        puts "Thương: #{(ps1.t*ps2.m)}/#{(ps1.m*ps2.t)}" 
    end
end
class Phanso
    attr_accessor :t, :m
    def initialize(t,m)
        @t= t
        @m = m
    end
end
class Phanso2
    attr_accessor :t,:m
    def initialize(t,m)
        self.t=t
        self.m = m
    end
    def +(other)
        Phanso.new(((self.t*other.m) + (other.t*self.m)), self.m*other.m)
    end
    def -(other)
        Phanso.new(self.t*other.m - other.t*self.m, self.m*other.m)
    end
    def *(other)
        Phanso.new(self.t * other.t, self.m*other.m)
    end
    def /(other)
        Phanso.new(self.t * other.m, self.m*other.t)
    end
end
ps1 = Phanso.new(1,4)
ps2 = Phanso.new(1,5)
tt = Tinhtoan.new(ps1,ps2)
tt.Cong
tt.Tru
tt.Tich
tt.Thuong
puts "-----------------------------------"
ps3 = Phanso2.new(1,6)
ps4 = Phanso2.new(1,7)
cong = ps3+ps4
puts "Cộng: #{cong.t}/#{cong.m}"
hieu = ps3 - ps4
puts "Hiệu: #{cong.t}/#{cong.m}"
tich = ps3 * ps4
puts "Tích: #{cong.t}/#{cong.m}"
thuong = ps3 / ps4
puts "Thương: #{cong.t}/#{cong.m}"