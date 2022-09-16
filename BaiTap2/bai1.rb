print "Nhập n: "
n = gets.to_i
a = []
n.times {|time|
    print "Nhap a[#{time}]: "
    a[time] = gets.to_i
}
print a
puts "\nmax: #{a.max}"
puts "min: #{a.min}"
puts "average: #{a.sum(0.0) / a.size}"