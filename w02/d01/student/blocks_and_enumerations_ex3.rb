# All together now!

students = [
  "Aliya",
  "Andres",
  "Angelina",
  "Brian",
  "Dain",
  "Dana",
  "Dennis",
  "Kamari",
  "Kristen",
  "Melodie",
  "Michael",
  "Patricio",
  "Chadd",
  "Ryan",
  "Sade",
  "Sarah",
  "Simons"
]

# Part 1:
#
# 1. List the students in the array above by printing them to standard out.
<<<<<<< HEAD

<<<<<<< HEAD
$stdout(students)

# 2. Print out only the first initials of the students above (eg, "Dennis" --> "D.").

students.each {|student| $stdout.puts(student.chars.first)}

# 3. Create a new array of just the students whose names start with vowels.

def is_vowel?(letter)
  letter.downcase!
  letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
end

students.each do |student|
  if is_vowel?(student.chars.first)
  $stdout.puts(student.chars.first)
  end
end

##################
=======
students.each {|name| puts name}

=======
>>>>>>> 5c0805cd5d2e70cf09eee0aff4c3d19c3a7e0b44
# 2. Print out only the first initials of the students above (eg, "Dennis" --> "D.").
# 3. Create a new array of just the students whose names start with vowels.
<<<<<<< HEAD
names_starting_with_vowels = []
students.each do |name|
  if name.start_with?("A"||"E"||"I"||"O"||"U")
    names_starting_with_vowels.push(name)
  end
end
puts(names_starting_with_vowels)

>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
=======
#
>>>>>>> 5c0805cd5d2e70cf09eee0aff4c3d19c3a7e0b44

klass = [
  {
    :name => "Aliya Scribner",
    :hipchat => "@AliyaScribner",
    :email => "aliya.scribner@gmail.com",
    :github => "Dev814"
  },
  {
    :name => "Andres Valencia",
    :hipchat => "@AndresValencia",
    :email => "andresv2@mac.com",
    :github => "andresv2"
  },
  {
    :name => "Angelina Bethoney",
    :hipchat => "@AngelinaBethoney",
    :email => "ambethoney@yahoo.com",
    :github => "ambethoney"
  },
  {
    :name => "Brian Rucker",
    :hipchat => "@BrianRucker",
    :email => "rucker.b@gmail.com",
    :github => "Brucker1"
  },
  {
    :name => "Dain Carver",
    :hipchat => "@DainCarver",
    :email => "carver403@gmail.com",
    :github => "rugger403"
  },
  {
    :name => "Dana DeFilippo",
    :hipchat => "@DanaDeFilippo",
    :email => "dana.defilippo@gmail.com",
    :github => "danadflip"
  },
  {
    :name => "Dennis Liaw",
    :hipchat => "@DennisLiaw",
    :email => "dennis.liaw@gmail.com",
    :github => "CentroDL"
  },
  {
    :name => "Kamari Aykes",
    :hipchat => "@KamariAykes",
    :email => "aykeskc@gmail.com",
    :github => "brainyandbrown"
  },
  {
    :name => "Kristen MacFarlane",
    :hipchat => "@KristenMacFarlane",
    :email => "krismacfarlane@gmail.com",
    :github => "krismacfarlane"
  },
  {
    :name => "Melodie Malfa",
    :hipchat => "@MelodieMalfa",
    :email => "melmalfa@gmail.com",
    :github => "melmalfa"
  },
  {
    :name => "Michael Campbell",
    :hipchat => "@MichaelCampbell",
    :email => "mccool322@aol.com",
    :github => "hammer7402"
  },
  {
    :name => "Patricio Calderon",
    :hipchat => "@PatricioCalderon",
    :email => "ourobor@gmail.com",
    :github => "Patdel"
  },
  {
    :name => "Chadd Clairmont",
    :hipchat => "@PaulClairmont",
    :email => "pcac25@gmail.com",
    :github => "chaddpaul"
  },
  {
    :name => "Ryan Laszlo",
    :hipchat => "@RyanLaszlo",
    :email => "ryan.laszlo@gmail.com",
    :github => "ryanlaszlo"
  },
  {
    :name => "Sade Stevens",
    :hipchat => "@SadeStevens",
    :email => "sadestevens.hc@gmail.com",
    :github => "Sadestevens"
  },
  {
    :name => "Sarah McAlear",
    :hipchat => "@SarahMcAlear",
    :email => "sarah.mcalear@gmail.com",
    :github => "sarahmcalear"
  },
  {
    :name => "Simons Chase",
    :hipchat => "@SimonsChase",
    :email => "simons.chase@gmail.com",
    :github => "slchase"
  }
]

# Part 2:
#
# 1. List the students in the array above by printing their names to standard out.
# 2. Print out only the students last names.
# 3. Create an array of all of the students' GitHub name.
<<<<<<< HEAD

<<<<<<< HEAD
klass.each {|vars| puts vars[:github]}

github_names = []
klass.each {|student| github_names.push( student[:github] ) }
=======
github_names = []
klass.each {|member| github_names.push( member[:github] )}
puts( github_names)

>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
=======
#
>>>>>>> 5c0805cd5d2e70cf09eee0aff4c3d19c3a7e0b44
