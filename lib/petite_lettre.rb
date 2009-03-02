require 'yaml'

module PetiteLettre
  def self.call(command,message)
    IO.popen(command,mode='r+') do |io|
      io.write(YAML::dump(message))
      io.close_write
      result = YAML::load(io.read)
      raise result[:error][:message] if result.is_a?(Hash) && result[:error]
      result
    end
  end
  
  def self.receive(input=$stdin,output=$stdout)
    message = YAML::load(input.read)
    result = nil
    begin
      result = yield message
    rescue => e
      result = { :error => { :message => e.message } }
    end
    output.write(YAML::dump(result))
  end
end