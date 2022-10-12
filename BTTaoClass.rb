class SVien
  def inputScore
    puts "Nhập điểm Toán"
    math = gets.to_i
    puts "Nhập điểm Hoá"
    chemistry = gets.to_i
    puts "Nhập điểm Lý"
    physic = gets.to_i
    return (math + chemistry + physic)/3
  end
end
SVThinh = SVien.new
puts SVThinh.inputScore