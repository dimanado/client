require 'rubygems'
require 'eventmachine'
require 'json'

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
