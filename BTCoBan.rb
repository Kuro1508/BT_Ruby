puts "Bài 1"
puts "_" *20
puts "Nhập số lượng số trong mảng"
a = gets.to_i
array = []
loop do
    array << gets
    if array.length == a
        break
    end
end
puts array.max
puts array.min
puts array.inject{ |sum, el| sum + el }.to_f / array.size
#
puts "_" *20
puts "Bài 2"
loop do
  puts "Nhập cạnh a"
  a = gets.to_i
  puts "Nhập cạnh b"
  b = gets.to_i
  puts "Nhập cạnh c"
  c = gets.to_i
 if (a + b > c) || (a + c > b) || (b + c > a)
   puts "Chu vi =#{a + b + c}"
  break
  puts "Nhập lại"
 end
end
#
puts "_" *20
puts "Bài 3"
puts "Nhập tên"
name = gets.to_s
puts name
#
puts "_" *20
puts "Bài 4"
array1 = []
puts "Nhập số a"
a = gets.to_i
array1 << a
puts "Nhập số b"
b = gets.to_i
array1 << b
puts "Nhập số c"
c = gets.to_i
array1 << c
puts array1.sort
puts array1.sort.reverse
#
puts "_" *20
puts "Bài 5"
puts 1.to_i
puts 1.to_f
puts "*"