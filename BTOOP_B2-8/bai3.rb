class ThiSinh
    attr_accessor :soBaoDanh_164, :hoTen_164, :diaChi_164, :mucUuTien_164
    def initialize soBaoDanh_164, hoTen_164, diaChi_164, mucUuTien_164
        @soBaoDanh_164 = soBaoDanh_164
        @hoTen_164 = hoTen_164
        @diaChi_164 = diaChi_164
        @mucUuTien_164 = mucUuTien_164
    end
    def show
        puts ("Số báo danh: #{@soBaoDanh_164}")
        puts ("Tên: #{@hoTen_164}")
        puts ("Địa chỉ: #{@diaChi_164}")
        puts ("Mức độ ưu tiên: #{@mucUuTien_164}")
    end
end
class ThiSinhKA < ThiSinh
    attr_accessor :toan_164, :ly_164, :hoa_164
    def initialize soBaoDanh_164, hoTen_164, diaChi_164, mucUuTien_164, toan_164, ly_164, hoa_164
        super soBaoDanh_164, hoTen_164, diaChi_164, mucUuTien_164
        @toan_164 = toan_164
        @ly_164 = ly_164
        @hoa_164 = hoa_164
    end
    def show
        super
        puts ("Điểm toán: #{@toan_164}")
        puts ("Điểm lý: #{@ly_164}")
        puts ("Điểm hóa: #{@hoa_164}")
    end
end
class ThiSinhKB < ThiSinh
    attr_accessor :toan_164, :hoa_164, :sinh_164
    def initialize soBaoDanh_164, hoTen_164, diaChi_164, mucUuTien_164, toan_164, hoa_164, sinh_164
        super soBaoDanh_164, hoTen_164, diaChi_164, mucUuTien_164
        @toan_164 = toan_164
        @hoa_164 = hoa_164
        @sinh_164 = sinh_164
    end
    def show
        super
        puts ("Điểm toán: #{@toan_164}")
        puts ("Điểm hóa: #{@hoa_164}")
        puts ("Điểm sinh: #{@sinh_164}")
    end
end
class ThiSinhKC < ThiSinh
    attr_accessor :van_164, :su_164, :dia_164
    def initialize  soBaoDanh_164, hoTen_164, diaChi_164, mucUuTien_164, van_164, su_164, dia_164
        super soBaoDanh_164, hoTen_164, diaChi_164, mucUuTien_164
        @van_164 = van_164
        @su_164 = su_164
        @dia_164 = dia_164
    end
    def show
        super
        puts ("Điểm văn: #{@van_164}")
        puts ("Điểm sử: #{@su_164}")
        puts ("Điểm địa: #{@dia_164}")
    end
end
class TuyenSinh
    @@thiSinh = Array.new
    def addCandidate(thiSinh)
        @@thiSinh.push(thiSinh)
    end
    def timkiemtheoSobaodanh(id)
        searchList = @@thiSinh .select { |o| o.soBaoDanh_164 == id}
        searchList.each{ |sl| sl.show}
    end
    def showts()
        @@thiSinh.each{ |thiSinh| thiSinh.show}
    end
end
qlTuyenSinh = TuyenSinh.new()
tsA = ThiSinhKA.new(1,"Trần Thị Phương Nhi", "A", "A", 7,8,9)
tsB = ThiSinhKB.new(2,"Lê Thị Trúc Vy", "B", "B", 4,6,7 )
tsC = ThiSinhKC.new(3, "Nguyễn Thị Cẩm Tú", "C", "C", 8,1,5)

qlTuyenSinh.addCandidate(tsA)
qlTuyenSinh.addCandidate(tsB)
qlTuyenSinh.addCandidate(tsC)
qlTuyenSinh.showts()
puts "<---------*******-------->"
puts "Kết quả tìm kiếm"
qlTuyenSinh.timkiemtheoSobaodanh(2)