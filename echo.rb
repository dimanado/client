require 'rubygems'
require 'eventmachine'
require 'json'
class EventM
  def self.push_request(x1,x2,x3)
    EM.run {
      require 'em-http'
      EventMachine.run {
        http = EventMachine::HttpRequest.new('http://localhost:3000/index').post body: {x1: x1, x2: x2,str:x3}
        http.errback { p 'Uh oh'; EM.stop }
        http.callback {
          p http.response
          EventMachine.stop
        }
      }
    }
  end
end

