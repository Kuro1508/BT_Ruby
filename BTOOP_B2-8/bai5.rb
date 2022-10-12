class Nguoi
    attr_accessor :hoTen_164, :tuoi_164, :cmnd_164
  
    def initialize(hoten_164, tuoi_164, cmnd_164)
      @hoTen_164 = hoten_164
      @tuoi_164 = tuoi_164
      @cmnd_164 = cmnd_164
    end
  
    def show
      puts "Ho ten: #{@hoTen_164}"
      puts "Tuoi: #{@tuoi_164}"
      puts "CMND: #{@cmnd_164}"
    end
  end
  
  class Phong
    attr_accessor :soNgayThue_164, :nguoiThue_164
  
    def initialize(soNgayThue_164, nguoiThue_164)
      @soNgayThue_164 = soNgayThue_164
      @nguoiThue_164 = nguoiThue_164
    end
  
    def show
      puts "So ngay thue: #{@soNgayThue_164}"
      puts "-- Thong tin nguoi thue --"
      @nguoiThue_164.show
    end
  end
  
  class PhongA < Phong
    attr_accessor :gia_164, :loaiPhong_164
  
    def initialize(soNgayThue_164, nguoiThue_164)
      super(soNgayThue_164, nguoiThue_164)
      @gia_164 = 500
      @loaiPhong_164 = "Loai A"
    end
  
    def show
      puts "Loai phong: #{@loaiPhong_164}"
      super
    end
  
    def tienThue
      tienThue_164 = @soNgayThue_164 * @gia_164
      puts "Tien thue: #{tienThue_164}"
    end
  end
  
  class PhongB< Phong
    attr_accessor :gia_164, :loaiPhong_164
  
    def initialize(soNgayThue_164, nguoiThue_164)
      super(soNgayThue_164, nguoiThue_164)
      @gia_164 = 300
      @loaiPhong_164 = "Loai B"
    end
  
    def show
      puts "Loai phong: #{@loaiPhong_164}"
      super
    end
  
    def tienThue
      tienThue_164 = @soNgayThue_164 * @gia_164
      puts "Tien thue: #{tienThue_164}"
    end
  end
  
  class PhongC < Phong
    attr_accessor :gia_164, :loaiPhong_164
  
    def initialize(soNgayThue_164, nguoiThue_164)
      super(soNgayThue_164, nguoiThue_164)
      @gia_164 = 100
      @loaiPhong_164 = "Loai C"
    end
  
    def show
      puts "Loai phong: #{@loaiPhong_164}"
      super
    end
  
    def tienThue
      tienThue_164 = @soNgayThue_164 * @gia_164
      puts "Tien thue: #{tienThue_164}"
    end
  end
  
  class Khachsan
    attr_accessor :listPhong
  
    def initialize
      nguoithue1 = Nguoi.new("Nhi", 21, "123123")
      nguoithue2 = Nguoi.new("Vy", 21, "321321")
      nguoithue3 = Nguoi.new("Tú", 21, "456456")
  
      phong1 = PhongA.new(2, nguoithue1)
      phong2 = PhongB.new(3, nguoithue2)
      phong3 = PhongC.new(1, nguoithue3)
  
      @listPhong = [phong1, phong2, phong3]
    end
  
    def show
      i = 1
      puts "DANH SACH PHONG"
      listPhong.each do |val|
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end
  
  KS = Khachsan.new()
  KS.show