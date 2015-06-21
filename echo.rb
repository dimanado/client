require 'rubygems'
require 'eventmachine'

class Echo < EventMachine::Connection
  def post_init
    puts "Соединение с сервером"
    #send_data 'Hello'
  end

  def unbind
    puts 'Обрыв'
  end

  def receive_data(data)
    puts 'Ответ получен'
    p data
  end
end

EventMachine.run {
  EventMachine::connect '127.0.0.1', 3000, Echo
}