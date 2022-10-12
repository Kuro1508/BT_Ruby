class Nguoi
    attr_accessor :name_164, :age_164, :work_164, :cmnd_164
    def initialize name_164, age_164, work_164, cmnd_164
        @name_164 = name_164
        @age_164 = age_164
        @work_164 = work_164
        @cmnd_164 = cmnd_164
    end 
    def initialize
    end
    def enter_infomation
        print "Nhập tên : "
        @name_164 = gets.chomp
        print "Nhập tuổi : "
        @age_164 = gets.to_i
        print "Nhập nghê nghiêp: "
        @work_164 = gets.chomp
        print "Nhập số chưng minh nhân dân : "
        @cmnd_164 = gets.to_i
    end
    def info    
        puts "Tên : #{@name_164}"
        puts "Tuối : #{@age_164}"
        puts "Nghê nghiệp : #{@work_164}"
        puts "Chứng minh nhân dân #{@cmnd_164}"
    end
end 

class HoGiaDinh < Nguoi
    attr_accessor :home_164, :member_164, :members_164
    def initialize name_164, age_164, work_164, cmnd_164, home_164, member_164, members_164
        super name_164, age_164, work_164, cmnd_164
        @home_164 = home_164
        @member_164 = member_164
        @members_164 = members_164
    end 
    def initialize
    end
    def enter_infomation
        @members_164 = []
        print "Nhập số nhà: "
        @home_164 = gets.chomp
        print "Nhập số thành viên : "
        @member_164 = gets.to_i
        for i in (0..@member_164 - 1) do
            puts "====Nhập thành viên thứ #{i+1}===="
            member1_164 = Nguoi.new
            member1_164.enter_infomation
            @members_164 << member1_164
        end
    end
   
    def info
        puts "Số nhà : #{@home_164}"
        puts "Số thành viên : #{@member_164}"
        i =1
        @members_164.each do |member_164|
            puts "===thông tin thành viên thứ #{i}==="
            member_164.info
            i = i+1
        end
    end
end
class KhuPho 
    def initialize
    end
    $hogiadinhs_164 = []
    def addHoGiaDinh
        print "Nhập số hộ gia đình : "
        @soluong_164 = gets.to_i
        for i in (0..@soluong_164 - 1) do
            puts "=====Nhập hộ gia đình thứ #{i+1}======"
            hogiadinh_164 = HoGiaDinh.new
            hogiadinh_164.enter_infomation
            $hogiadinhs_164 << hogiadinh_164
        end
    end

    def infomatinon 
        i = 1
        puts "============Thong tin Khu phố ================"   
        $hogiadinhs_164.each do |hogiadinh_164|
            puts "=====Thông tin hộ gia đình thứ #{i}======"
            hogiadinh_164.info
            i = i+1
        end
    end

end

khupho_164 = KhuPho.new
khupho_164.addHoGiaDinh
khupho_164.infomatinon