a = []
3.times {|time|
    print "Nhap so thu #{time + 1}: "
    a[time] = gets.to_i
}
puts "Tang dan: #{a.sort}"
puts "Giam dan: #{a.sort { |a, b| b <=> a }}"