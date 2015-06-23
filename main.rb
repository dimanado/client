require_relative 'echo'
require_relative 'work_file'

Work_file.read.each do |g|
  (x1, x2, x3 = g.chomp.split(' '))
  if(!x1.nil? || !x2.nil? || !x3.nil?)
    EventM.push_request(x1.to_i,x2.to_i,x3)
  else
    p 'строка пуста'
  end
end

