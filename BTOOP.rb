class Human
    attr_accessor :name, :hair ,:gender , :phone, :email, :nation
    attr_accessor :height, :weight, :age
    def initialize(name,gender,hair,height,weight,age,phone,email,nation)          
            @name = name    
            @gender = gender    
            @hair = hair
            @height = height
            @weight = weight
            @phone =  phone
            @email = email 
            @age = age
            @nation = nation 
    end 
    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Tóc: #{lan}, Chiều cao: #{height}, Cân nặng: #{height}, Số điện thoại: #{phone}, Email: #{email}, Dân tộc: #{nation}\n"
    end 
end 

class Student < Human
    attr_accessor :grade1, :grade2, :grade3, :average 
    def nhap(grade1,grade2,grade3)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
        @average = (grade1 + grade2 + grade3)*0.1 /3
    end  
    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Tóc: #{hair}, Chiều cao: #{height}, Cân nặng: #{height}, Số điện thoại: #{phone}, Email: #{email}, Dân tộc: #{nation}, Điểm trung bình: #{average}\n"
    end
end
students = Array.new()
Student1 = Student.new("HS1","Nam","Đen","1m6","45kg","21","0123456785","hocsinh1@gmail.com","Kinh")
Student1.nhap(1,2,3)
students.push(Student1)
Student2 = Student.new("HS2","Nam","Đen","1m7","50kg","21","01234567896","hocsinh2@gmail.com","Kinh")
Student2.nhap(8,9,10)
students.push(Student2)
Student3 = Student.new("HS3","Nam","Đen","1m8","55kg","21","0123456787","hocsinh3@gmail.com","Kinh")
Student3.nhap(5,6,7)
students.push(Student3)
students.each_index {
    |index|
    puts "#{students[index].show()}"
}
print "Danh sách sinh viên sau khi sắp xếp:\n"
for x in students.sort_by{|stu|[-stu.average]} do
    puts "#{x.show}"
end