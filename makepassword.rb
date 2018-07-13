require 'HTTParty'
require 'pry'

res = HTTParty.get("https://makemeapassword.org/api/v1/alphanumeric/json?c=10&l=6")
password_response = JSON.parse(res.body)
binding.pry

passwords = []
password_response['pws'].each do |password|
  if passwords.count < 10
    passwords << password
  end
end

puts passwords
