require_relative 'echo'
require_relative 'work_file'


s = Work_file.read
s.each do |g|
  x1, x2, x3 = g.chomp.split(' ')
  puts("x1 = #{x1},x2 = #{x2},x3 = #{x3}")
end
EventM.push_request
