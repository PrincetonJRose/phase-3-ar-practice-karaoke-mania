class KaraokeSinger < ActiveRecord::Base

    has_many :playlists
    has_many :songs, through: :playlists

    def sing song
        # Playlist.create( karaoke_singer: self, song: song )
        self.songs << song
    end

    def buy_drink
        self.update( number_of_drinks: self.number_of_drinks + 1 )
    end

    def songs_by_artist artist
        # self.songs.where("artist_name like '#{artist}'")
        self.songs.filter { |song| song.artist_name.downcase == artist.downcase }
    end

    def drinks_tab price_per_drink
        self.number_of_drinks * price_per_drink
    end

    def self.total_tab price_per_drink
        self.all.map { |ks| ks.drinks_tab price_per_drink }.sum
        # self.all.pluck( :number_of_drinks ).sum * price_per_drink
    end
end
