puts 'Clearing the database...'

Playlist.destroy_all
Song.destroy_all
KaraokeSinger.destroy_all

puts "Database cleared!"

puts "Getting songs to be sung..."

Song.create( title: "Thriller", runtime_in_minutes: 5, artist_name: "Micheal Jackson" )
Song.create( title: "You Belong With Me", runtime_in_minutes: 4, artist_name: "Taylor Swift" )
Song.create( title: "Love Galore", runtime_in_minutes: 3, artist_name: "SZA" )
Song.create( title: "Kissed By A Rose", runtime_in_minutes: 4, artist_name: "Seal" )
Song.create( title: "Almost Doesn't Count", runtime_in_minutes: 3, artist_name: "Brandy" )
Song.create( title: "Act A Fool", runtime_in_minutes: 2, artist_name: "Ludacris" )
Song.create( title: "Push It!", runtime_in_minutes: 3, artist_name: "Salt-N-Pepa" )
Song.create( title: "Hooked On A Feelin'", runtime_in_minutes: 5, artist_name: "Blue Suede" )
Song.create( title: "Billie Jean", runtime_in_minutes: 6, artist_name: "Micheal Jackson" )

puts 'Songs are in the jukebox!'

puts "Getting people who want to sing and drink..."

KaraokeSinger.create( name: "Devin" )
KaraokeSinger.create( name: "Bo" )
KaraokeSinger.create( name: "Kate" )
KaraokeSinger.create( name: "Trey" )
KaraokeSinger.create( name: "Brook" )
KaraokeSinger.create( name: "Abbi" )
KaraokeSinger.create( name: "Princeton" )

puts "Singers are racking up tabs!"

puts "Getting together some playlists..."

20.times do
    Playlist.find_or_create_by( karaoke_singer: KaraokeSinger.all.sample, song: Song.all.sample )
end

puts "Playlists set!"

puts "All done!!! 🥂"