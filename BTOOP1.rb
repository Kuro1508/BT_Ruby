class CanBo
    attr_accessor :name, :age ,:gender , :address
    def initialize(name,age,gender,address)          
            @name = name  
            @age=age
            @gender = gender    
            @address=address
    end 
    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Địa chỉ: #{address} \n"
    end 
end 

class CongNhan < CanBo
    attr_accessor :level
    def initialize(name,age,gender,address,level)   
        super(name,age,gender,address)
        @level=level 
    end

    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Địa chỉ: #{address}, Bật: #{level} \n"
    end 

end

class KiSu < CanBo
    attr_accessor :branch
    def initialize(name,age,gender,address,branch) 
        super(name,age,gender,address)       
        @branch=branch 
    end

    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Địa chỉ: #{address}, Ngành dào tạo: #{branch} \n"
    end 

end

class NhanVien < CanBo
    attr_accessor :task
    def initialize(name,age,gender,address,task)   
        super(name,age,gender,address)      
        @task=task
    end

    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Địa chỉ: #{address}, Công việc: #{task} \n"
    end 

end

listCB = Array.new()
while (true)
    puts("Application Manager Officer")
    puts("Enter 1: To insert officer")
    puts("Enter 2: To search officer by name: ")
    puts("Enter 3: To show information officers")
    puts("Enter 4: To exit:")
    i = gets.to_i
    case i
        when 1
            puts("Enter a: to insert Enginner")
            puts("Enter b: to insert Worker")
            puts("Enter c: to insert Staff")
            type = gets.chomp
            case type
                when "a"
                    puts("Enter name: ");
                    name = gets
                    puts("Enter age:");
                    age = gets.to_i
                    puts("Enter gender: ");
                    gender = gets
                    puts("Enter address: ");
                    address=gets
                    puts("Enter branch: ");
                    branch = gets
                    engineer1 = KiSu.new(name, age, gender, address, branch);
                    listCB.push(engineer1);
                    puts("#{engineer1.show}")
                when "b"
                    puts("Enter name: ");
                    name = gets
                    puts("Enter age:");
                    age = gets.to_i
                    puts("Enter gender: ");
                    gender = gets
                    puts("Enter address: ");
                    address=gets
                    puts("Enter level: ");
                    level = gets
                    worker1 = CongNhan.new(name, age, gender, address, level);
                    listCB.push(worker1);
                    puts("#{worker1.show}")
                when "c"
                    puts("Enter name: ");
                    name = gets
                    puts("Enter age:");
                    age = gets.to_i
                    puts("Enter gender: ");
                    gender = gets
                    puts("Enter address: ");
                    address=gets
                    puts("Enter level: ");
                    task = gets
                    staff1 = NhanVien.new(name, age, gender, address, task);
                    listCB.push(staff1);
                    puts("#{staff1.show}")
                else
                    puts("Invalid")
            end
        # case "2": {
        #     System.out.print("Enter name to search: ");
        #     String name = scanner.nextLine();
        #     managerOfficer.searchOfficerByName(name).forEach(officer -> {
        #         System.out.println(officer.toString());
        #     });
        #     break;
        # }
        # case "3": {
        #     managerOfficer.showListInforOfficer();
        #     break;
        # }
        when 4
            exit
            else 
                puts("Invalid")
    end
end