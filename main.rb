require 'net/http'

puts ""
puts "---> START <---"

uri = URI('http://www.yahoo.com')
res = Net::HTTP.get_response(uri)
puts "---> uri: #{uri.inspect}"
puts "---> class: #{uri.class}"
puts "---> 1: #{res.http_version}"
puts "---> 2: #{res.message}"


module Net
 class HTTP
  def self.say_hello
   'hello'
  end
  def self.say_goodbye
   'goodbye'
  end
 end
end

puts "---> 3: #{Net::HTTP.say_hello}"
puts "---> 4: #{Net::HTTP.say_goodbye}"
puts "---> 5: #{Net::HTTP.methods}"
puts "---> 6: #{Net::HTTP.methods(false)}"
puts "---> 7: #{Net::HTTP.methods.grep(/^say/)}"

#puts "---> #{res.methods.inspect}"
#res.methods.each { |m| puts "---> response meth: #{m}" }
#puts res.body

puts "---> END   <---"
puts ""
