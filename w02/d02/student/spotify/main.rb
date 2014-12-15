require_relative 'playlist.rb'
require_relative 'song.rb'

nothing_compares_to_you = Song.new("Nothing Compares 2 U", "Sinead O'Conner")
<<<<<<< HEAD
<<<<<<< HEAD
i_know_its_over         = Song.new("I know it's over", "The Smiths")
call_your_girlfriend    = Song.new("Call Your Girlfriend", "Robyn")
take_it_on_the_run      = Song.new("Take It On The Run", "REO Speedwagon")
=======
# nothing_compares_to_you.play
=======
nothing_compares_to_you.play
>>>>>>> 5c0805cd5d2e70cf09eee0aff4c3d19c3a7e0b44
i_know_its_over         = Song.new("I know it's over", "The Smiths")
call_your_girlfriend    = Song.new("Call Your Girlfriend", "Robyn")
take_it_on_the_run      = Song.new("Take It On The Run", "REO Speedwagon")
<<<<<<< HEAD
# take_it_on_the_run.play
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
=======
>>>>>>> 5c0805cd5d2e70cf09eee0aff4c3d19c3a7e0b44

travs_new_playlist = Playlist.new("breakup mix")

travs_new_playlist.add_song(nothing_compares_to_you)
travs_new_playlist.add_song(i_know_its_over)
travs_new_playlist.add_song(call_your_girlfriend)
travs_new_playlist.add_song(take_it_on_the_run)
<<<<<<< HEAD

<<<<<<< HEAD
=======
puts(travs_new_playlist.title)
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
travs_new_playlist.play
=======
>>>>>>> 5c0805cd5d2e70cf09eee0aff4c3d19c3a7e0b44
