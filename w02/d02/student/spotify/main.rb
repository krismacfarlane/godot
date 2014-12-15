require_relative 'playlist.rb'
require_relative 'song.rb'

nothing_compares_to_you = Song.new("Nothing Compares 2 U", "Sinead O'Conner")
<<<<<<< HEAD
i_know_its_over         = Song.new("I know it's over", "The Smiths")
call_your_girlfriend    = Song.new("Call Your Girlfriend", "Robyn")
take_it_on_the_run      = Song.new("Take It On The Run", "REO Speedwagon")
=======
# nothing_compares_to_you.play
i_know_its_over         = Song.new("I know it's over", "The Smiths")
# i_know_its_over.play
call_your_girlfriend    = Song.new("Call Your Girlfriend", "Robyn")
# call_your_girlfriend.play
take_it_on_the_run      = Song.new("Take It On The Run", "REO Speedwagon")
# take_it_on_the_run.play
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d

travs_new_playlist = Playlist.new("Breakup Mix")

travs_new_playlist.add_song(nothing_compares_to_you)
travs_new_playlist.add_song(i_know_its_over)
travs_new_playlist.add_song(call_your_girlfriend)
travs_new_playlist.add_song(take_it_on_the_run)

<<<<<<< HEAD
=======
puts(travs_new_playlist.title)
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
travs_new_playlist.play
