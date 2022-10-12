class Hocsinh
    attr_accessor :hoTen_164, :tuoi_164, :queQuan_164
  
    def initialize(hoTen_164, tuoi_164, queQuan_164)
      @hoTen_164 = hoTen_164
      @tuoi_164 = tuoi_164
      @queQuan_164 = queQuan_164
    end
  
    def show
      puts "Ho ten: #{@hoTen_164}"
      puts "Tuoi: #{@tuoi_164}"
      puts "Que quan: #{@queQuan_164}"
    end
  end
  
  class Quanlyhocsinh
    attr_accessor :listHS
  
    def initialize
      hs1 = Hocsinh.new("Nguyễn Cẩm Tú ", 21, "HT")
      hs2 = Hocsinh.new("Lê Vy", 21, "BD")
      hs3 = Hocsinh.new("Trần Phương Nhi ", 21, "KT")
      hs4 = Hocsinh.new("Hồ Thuý Hà", 20, "Hue")
      hs5 = Hocsinh.new("Hồ Tuấn", 23, "DN")
  
      @listHS = [hs1, hs2, hs3, hs4]
    end
  
    def nhapThongTin
      print "Nhap ho ten: "
      ht_164 = gets.chomp
      print "Nhap tuoi: "
      tuoi_164 = gets.chomp.to_i
      print "Nhap que quan: "
      que_164 = gets.chomp
  
      listHS.push(Hocsinh.new(ht_164, tuoi_164, que_164))
    end
  
    def themHS(n)
      puts "===== Them Ho Hoc Sinh ====="
      for i in 1..n
        print "\nNhap hoc sinh thu ", i, "\n"
        nhapThongTin
      end
    end
  
    def tiemKiem1
      i = 1
      puts "DANH SACH HOC SINH 20 TUOI"
      listHS.each do |val|
        if val.tuoi_164 == 20
          print i.to_s + ". "
          val.show
          puts "\n----------------"
          i += 1
        end
      end
    end
  
    def tiemKiem2
      i = 1
      puts "DANH SACH HOC SINH 20 TUOI"
      listHS.each do |val|
        if val.tuoi_164 == 23 && val.queQuan_164 == "DN"
          print i.to_s + ". "
          val.show
          puts "\n----------------"
          i += 1
        end
      end
      i = i - 1
      puts "Số lượng: #{i}"
    end
  
    def show
      i = 1
      puts "DANH SACH HOC SINH"
      listHS.each do |val|
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end
  
  QLHS = Quanlyhocsinh.new()
  
  choose = 1
  while choose < 4 && choose > 0
  
    puts "\n1. Thêm học sinh"
    puts "2. Hiển thị các học sinh 20 tuổi"
    puts "3. Số lượng học sinh 23 tuổi và quê DN"
    puts "4. Thoát"
  
    print "Lựa chọn của bạn: "
    choose = gets.chomp.to_i
  
    system("cls")
  
    case choose
    when 1
      system("cls")
      print "Số học sinh cần thêm: "
      n = gets.chomp.to_i
      QLHS.themHS(n)
      QLHS.show
    when 2
      system("cls")
      QLHS.tiemKiem1
    when 3
      system("cls")
      QLHS.tiemKiem2
      end
  end