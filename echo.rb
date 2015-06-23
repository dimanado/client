require 'rubygems'
require 'eventmachine'
require 'json'
require_relative 'work_file'

 
  s = Work_file.read
  s.each do |g|
    x1, x2, x3 = g.chomp.split(' ')
    puts("x1 = #{x1},x2 = #{x2},x3 = #{x3}")
end
=begin
EM.run {
  require 'em-http'
  URL='http://localhost:3000/index'
  EventMachine.run {
    http = EventMachine::HttpRequest.new(URL).post body: {x1: '2', x2: '4',str: '+'}
    http.errback { p 'Uh oh'; EM.stop }
    http.callback {
      p http.response
      EventMachine.stop
    }
  }
}
=end
