# Nhập 3 cạnh tam giác, kiểm tra điều kiện có phải 3 cạnh tam giác hay ko? 
# nếu đúng --> tính chu vi, diên tích --> in ra

puts "Nhap lan luot 3 canh tam giac: "
print "Nhap a: "
a = gets.to_i
print "Nhap b: "
b = gets.to_i
print "Nhap c: "
c = gets.to_i

if a+b>c && b+c>a && a+c>b
    puts "3 canh vua nhap la mot tam giac"
    p = a + b + c
    puts "Chu vi: #{p}"
    p = p / 2.0
    S = Math.sqrt(p * (p - a) * (p - b) * ( p - c))
    puts "Dien tich: #{S}"
else
    puts "3 canh vua nhap khong la mot tam giac"
end