class PhuongTien
    attr_accessor :id164, :hsx164, :nsx164, :dongxe164, :giaban164, :bienso164, :mauxe164
    def initialize(id164, hsx164, nsx164, dongxe164, giaban164, bienso164, mauxe164)
        @id164 = id164
        @hsx164 = hsx164
        @nsx164 = nsx164
        @dongxe164 = dongxe164
        @giaban164 = giaban164
        @bienso164 = bienso164
        @mauxe164 = mauxe164
    end

    def show
        puts "Mã xe: #{@id164}, Hãng sản xuất: #{@hsx164}, Năm sản xuất: #{@nsx164}}, Dòng xe: #{@dongxe164}, Giá bán xe: #{@giaban164}, Biển số: #{@bienso164}, Mẫu xe: #{@mauxe164} "
    end

end 

class Oto < PhuongTien
    attr_accessor :chongoi164, :kdc164, :nhienlieu164, :tuikhi164, :ndk164
    def initialize(id164, hsx164, nsx164, dongxe164, giaban164, bienso164, mauxe164,chongoi164,kdc164,nhienlieu164,tuikhi164,ndk164)   
        super(id164, hsx164, nsx164, dongxe164, giaban164, bienso164, mauxe164)
        @chongoi164=chongoi164
        @kdc164=kdc164
        @nhienlieu164=nhienlieu164
        @tuikhi164=tuikhi164
        @ndk164=ndk164
    end

    def show
        puts "Mã xe: #{@id164}, Hãng sản xuất: #{@hsx164}, Năm sản xuất: #{@nsx164}}, Dòng xe: #{@dongxe164}, Giá bán xe: #{@giaban164}, Biển số: #{@bienso164}, Mẫu xe: #{@mauxe164}, Số chỗ ngồi: #{@chongoi164}, Kiểu động cơ: #{@kdc164}, Nguyên liệu: #{@nhienlieu164}, Số túi khí: #{@tuikhi164}, Ngày đăng kiểm: #{@ndk164}"
    end 

end

class XeMay < PhuongTien
    attr_accessor :congsuat164, :dts164
    def initialize(id164, hsx164, nsx164, dongxe164, giaban164, bienso164, mauxe164,congsuat164,dts164) 
        super(id164, hsx164, nsx164, dongxe164, giaban164, bienso164, mauxe164)       
        @congsuat164=congsuat164
        @dts164=dts164
    end

    def show
        puts "Mã xe: #{@id164}, Hãng sản xuất: #{@hsx164}, Năm sản xuất: #{@nsx164}}, Dòng xe: #{@dongxe164}, Giá bán xe: #{@giaban164}, Biển số: #{@bienso164}, Mẫu xe: #{@mauxe164}, Công suất: #{@congsuat164}, Dung tích xăng: #{@dts164} "
    end 

end

class XeTai < PhuongTien
    attr_accessor :trongtai164
    def initialize(id164, hsx164, nsx164, dongxe164, giaban164, bienso164, mauxe164,trongtai164)   
        super(id164, hsx164, nsx164, dongxe164, giaban164, bienso164, mauxe164)      
        @trongtai164=trongtai164    
    end

    def show
        puts "Mã xe: #{@id164}, Hãng sản xuất: #{@hsx164}, Năm sản xuất: #{@nsx164}}, Dòng xe: #{@dongxe164}, Giá bán xe: #{@giaban164}, Biển số: #{@bienso164}, Mẫu xe: #{@mauxe164}, Trọng tải: #{@trongtai164} "
    end 

end

class Qlpt

    def add(phuongtien1)
        $listPT.push(phuongtien1)

    end

    def showPT 
        for item in $listPT do
           item.show
        end
    end

    def deletePT(id) 
        for item in $listPT do
            if(item.id164 ==id)
                $listPT.delete(item)
                puts "delete thanh cong"
            end
        end  
    end

    def timkiemtheohang(hang)
        $listPT.each_index{
            |index|
            if $a[index].hsx164 == hang
                puts "#{$listPT[index].show}"
            end
        }
    end
    def timkiemtheomau(mau)
        $a.each_index{
            |index|
            if $listPT[index].mauxe164 == mau
                puts "#{$listPT[index].show}"
            end
        }
    end
    def timkiemtheobienso(bienso)
        $listPT.each_index{
            |index|
            if $listPT[index].bienso134 == bienso
                puts "#{$listPT[index].show}"
            end
        }
    end

end 

$listPT = Array.new()
qlpt164= Qlpt.new

while (true)
    puts("Quản lý phương tiện")
    puts("Enter 1: Thêm vào danh sách và hiển thị")
    puts("Enter 2: Xóa phương tiện theo ID")
    puts("Enter 3: Tìm phương tiện theo hãng sản xuất, màu, biển số")
    puts("Enter 4: To exit")
    i = gets.to_i
    case i
        when 1
            puts("nhap id ");
            id164 = gets
            puts("nhap hang san xuat:");
            hsx164 = gets.to_i
            puts("nhap nam san xuat: ");
            nsx164 = gets
            puts("dong xe: ");
            dongxe164=gets
            puts("giaban: ");
            giaban164 = gets
            puts("bien so: ");
            bienso164=gets
            puts("mau xe: ");
            mauxe164 = gets

            puts("Enter a: oto")
            puts("Enter b: xe may")
            puts("Enter c: xe tai")
            type = gets.chomp
            case type
                when "a"
                    puts("cho ngoi: ");
                    chongoi164 = gets
                    puts("kieu dong co: ");
                    kdc164=gets
                    puts("nhien lieu: ");
                    nhienlieu164 = gets
                    puts("so tui khi: ");
                    tuikhi164 = gets
                    puts("ngay dang kiem: ");
                    ndk164=gets
                    oto164 = Oto.new(id164, hsx164, nsx164, dongxe164, giaban164, bienso164, mauxe164,chongoi164,kdc164,nhienlieu164,tuikhi164,ndk164);
                    qlpt164.add(oto164)
                    qlpt164.showPT
                when "b"
                    puts("cong suat: ");
                    congsuat164 = gets
                    puts("dung tich binh sang: ");
                    dts164=gets
                    xemay164 = XeMay.new(id164, hsx164, nsx164, dongxe164, giaban164, bienso164, mauxe164,congsuat164,dts164);
                    qlpt164.add(xemay164)
                when "c"
                    puts("trong tai: ");
                    trongtai164=gets
                    xetai164 = XeTai.new(id164, hsx164, nsx164, dongxe164, giaban164, bienso164, mauxe164,trongtai164);
                    qlpt164.add(xetai164)
                else
                    puts("Invalid")
            end
            when 2
                puts("nhap id xoa: ");
                idXoa164 = gets
                qlpt164.deletePT(idXoa164)
            when 3
                puts("Enter a: hang")
                puts("Enter b: mau ")
                puts("Enter c: bien so")
                type = gets.chomp
                case type
                    when "a"
                        puts("nhap hang: ");
                        hang164 = gets
                        qlpt164.timkiemtheohang(hang164)
                    when "b"
                        puts("nhap mau: ");
                        mau164 = gets
                        qlpt164.timkiemtheomau(mau164)
                    when "c"
                        puts("nhap bien so: ");
                        bienso164 = gets
                        qlpt164.timkiemtheobienso(bienso134)
                    else 
                        puts("Invalid")
                end
        when 4
            exit
            else 
                puts("Invalid")
    end
end