require 'json'

results = '{"results":[{"user":{"gender":"male","name":{"title":"mr","first":"ritthy","last":"mendoza"},"location":{"street":"9791 robinson rd","city":"vernon","state":"idaho","zip":"36531"},"email":"ritthy.mendoza70@example.com","username":"orangewolf692","password":"secrets","salt":"WN0OWvIc","md5":"f386e1203a31d6b397ec538f161d6332","sha1":"188ae5ee139fe789d20207ba27ac87ea6757f3e1","sha256":"176ed291eaf2f7906a053a97761b59e57a17f1444376860bb0d85917a09fbc1e","registered":"1138571847","dob":"353497588","phone":"(837)-192-1272","cell":"(744)-279-6420","SSN":"287-56-2054","picture":{"large":"http://api.randomuser.me/portraits/men/64.jpg","medium":"http://api.randomuser.me/portraits/med/men/64.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/men/64.jpg"},"version":"0.4.1"},"seed":"06881b8ab932f441"}]}'
my_hash = JSON.parse(results)

name = my_hash["results"][0]["user"]["name"]
fname = name["first"]
lname = name["last"]
$stdout.puts "#{fname} #{lname}"

$stdout.puts my_hash["results"][0]["user"]["name"]["first"]

require 'httparty'
response = HTTParty.get("http://api.randomuser.me/?gender=female&results=10")
ten_female_first_and_lastnames = response["results"].map do |result|
  name_hash = result["user"]["name"]
  fname = name_hash["first"]
  lname = name_hash["last"]
  "#{fname} #{lname}"
end

require 'httparty'
url = "http://api.randomuser.me/?gender=male&results=5"
response = HTTParty.get(url)

five_male_thumbnails = response["results"].map do |result|
  thumbnail_pic = result["user"]["picture"]["thumbnail"]
  thumbnail_pic
end
