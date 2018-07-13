require 'HTTParty'

res = HTTParty.get("https://makemeapassword.org/api/v1/pasphrase/json?pc=10&wc=8&s=RandomForever")

password_response = JSON.parse(res.body)

passwords = []
password_response['pws'].each do |password|
  if passwords.count < 10
    passwords << password
  end
end
