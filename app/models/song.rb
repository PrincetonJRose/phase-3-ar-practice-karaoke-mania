class Song < ActiveRecord::Base

    has_many :playlists
    has_many :karaoke_singers, through: :playlists

    def self.find_by_artist artist_name
        # self.where("artist_name like ?", artist_name)
        self.where("artist_name like '#{artist_name}'")

        # self.all.filter { |song| song.artist_name.downcase == artist_name.downcase }
    end

    def number_of_times_sung
        self.playlists.count
    end
end
