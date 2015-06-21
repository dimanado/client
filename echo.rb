require 'rubygems'
require 'eventmachine'

EM.run {
  require 'em-http'

  EM::HttpRequest.new('http://localhost:3000/').get.callback { |http|
    puts http.response
  }
}
