require 'pry'

kanye_tweets = [
  { :time => "12:52 am", :text => "You may be talented, but you're not Kanye West" },
  { :time => "9:55 pm",  :text => "I make awesome decisions in bike stores!!!" },
  { :time => "11:55 am", :text => "Sometimes I get emotional over fonts" },
  { :time => "10:30 pm", :text => "I just threw some kazoo on this bitch" },
  { :time => "11:55 am", :text => "Fur pillows are actually hard to sleep on" },
  { :time => "2:23 pm",  :text => "I hate big ass striped scarves" },
  { :time => "9:05 am",  :text => "I could never do stand up cause I tell jokes better when I'm sitting" },
]

# use map create a new array of Kanyes tweets, but each hash should have a key of the symbol :username that points to the string of kanyewest

tweets_by_kanye = kanye_tweets.map do |tweet|
  tweet[:username] = "kanyewest"
  tweet
end

binding.pry
