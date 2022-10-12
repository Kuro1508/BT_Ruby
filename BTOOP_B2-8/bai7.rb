class Nguoi
    attr_accessor :hoTen_164, :tuoi_164, :queQuan_164, :maSoGV_164, :luongCung_164, :luongThuong_164, :tienPhat_164, :luongthucLinh_164
  
    def initialize(hoTen_164, tuoi_164, queQuan_164, maSoGV_164, luongCung_164, luongThuong_164, tienPhat_164, luongthucLinh_164)
      @hoTen_164 = hoTen_164
      @tuoi_164 = tuoi_164
      @queQuan_164 = queQuan_164
      @maSoGV_164 = maSoGV_164
      @luongCung_164 = luongCung_164
      @luongThuong_164 = luongThuong_164
      @tienPhat_164 = tienPhat_164
      @luongthucLinh_164 = luongthucLinh_164
    end
  
    def show
      puts "Ma so GV: #{@maSoGV_164} - Ho ten: #{@hoTen_164}"
      puts "Tuoi: #{@tuoi_164} - Que quan: #{@queQuan_164}"
      puts "Luong cung: #{luongCung_164} - Luong thuong: #{luongThuong_164}"
      puts "Tien phat: #{tienPhat_164} - Luong thuc nhan: #{@luongthucLinh_164}"
    end
  end
  class CBGB
    attr_accessor :listCB
  
    def initialize
      cb1 = Nguoi.new("Nguyễn A", 23, "QN", "001", 1000000, 200000, 50000, 1150000)
      cb2 = Nguoi.new("Lê B", 24, "DN", "002", 2000000, 200000, 50000, 2150000)
      cb3 = Nguoi.new("Trần C", 25, "QN", "003", 3000000, 200000, 50000, 3150000)
      cb4 = Nguoi.new("1", 1, "1", "1", 1, 1, 1, 1)
  
      @listCB = [cb1, cb2, cb3, cb4]
    end
  
    def nhapThongTin
      print "Nhap ho ten: "
      ht_164 = gets.chomp
      print "Nhap ma so giao vien: "
      ma_164 = gets.chomp
      print "Nhap tuoi: "
      tuoi_164 = gets.chomp.to_i
      print "Nhap que quan: "
      que_164 = gets.chomp
      print "Nhap luong cung: "
      luongcung_164 = gets.chomp.to_f
      print "Nhap luong thuong: "
      luongthuong_164 = gets.chomp.to_f
      print "Nhap tien phat: "
      tienphat_164 = gets.chomp.to_f
  
      luongthuc_164 = luongcung_164 + luongthuong_164 - tienphat_164
  
      listCB.push(Nguoi.new(ht_164, tuoi_164, que_164, ma_164, luongcung_164, luongthuong_164, tienphat_164, luongthuc_164))
    end
  
    def themCanBo(n)
      puts "===== Them Giao Vien ====="
      for i in 1..n
        print "\nNhap giao vien thu ", i, "\n"
        nhapThongTin
      end
    end
  
    def xoaCanBo(ma)
      listCB.delete_if { |item| item.maSoGV_164.chomp.eql?ma }
      print "Đã xoá thành công!"
    end
  
    def show
      i = 1
      puts "DANH SACH CAN BO"
      listCB.each do |val|
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end
  
  QLCB = CBGB.new
  
  choose = 1
  while choose < 4 && choose > 0
  
    puts "\n1. Them giao vien"
    puts "2. Danh sach giao vien"
    puts "3. Xoa giao vien"
    puts "4. Thoat"
  
    print "Lua chon cua ban: "
    choose = gets.chomp.to_i
  
    system("cls")
  
    case choose
    when 1
      system("cls")
      print "So giao vien can them: "
      n = gets.chomp.to_i
      QLCB.themCanBo(n)
      QLCB.show
    when 2
      system("cls")
      QLCB.show
    when 3
      system("cls")
      print "Nhap ma so giao vien: "
      ma = gets.chomp
      QLCB.xoaCanBo(ma)
      QLCB.show
    end
  end