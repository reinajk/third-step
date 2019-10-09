class Array
def sum
   reduce(:+)
end

def mean
self.inject(:+) / self.length
end

def var
   m = mean
   reduce(0) { |a,b| a+(b-m)**2} / (size-1)
end

def sd
   Math.sqrt(var)
end
end

rika = [65,80,67,35,58,60,72,75,68,92,36,50,2,58.5,46,42,78,62,84,70]
eigo = [44,87,100,63,52,60,58,73,55,86,29,56,89,23,65,84,64,27,86,84]

puts"\n"
print "理科の平均点は"
puts rika.mean
print "英語の平均点は"
puts eigo.mean

puts "\n"
print"----------------------------------------------------------------------"
puts"\n"
print "理科の標準偏差は"
puts rika.sd
print "英語の標準偏差は"
puts eigo.sd

puts "\n"
print"----------------------------------------------------------------------"
puts"\n"
print"理科の合計点は"
puts rika.sum
print"英語の合計点は"
puts eigo.sum

puts "\n"
print"----------------------------------------------------------------------"
puts"\n"
puts "理科の偏差値は"
rika.each do |x|
  ss = (x - rika.mean) / rika.sd * 10 + 50 # 偏差値
  print "#{x}\t#{ss}\n"
end

print"\n"

puts "英語の偏差値は"
eigo.each do |x|
  ss = (x - eigo.mean) / eigo.sd * 10 + 50 # 偏差値
  print "#{x}\t#{ss}\n"
end

puts"\n"
print"----------------------------------------------------------------------"
puts"\n"

puts"理科の点数を高い順に並べると"
print rika.sort.reverse
print"\n"

puts"英語の点数を高い順に並べると"
print eigo.sort.reverse
print"\n"
