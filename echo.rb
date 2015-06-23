require 'rubygems'
require 'eventmachine'
require 'json'
class EventM
  def self.push_request
    EM.run {
      require 'em-http'
      EventMachine.run {
        http = EventMachine::HttpRequest.new('http://localhost:3000/index').post body: {x1: '2', x2: '4',str: '+'}
        http.errback { p 'Uh oh'; EM.stop }
        http.callback {
          p http.response
          EventMachine.stop
        }
      }
    }
  end
end

