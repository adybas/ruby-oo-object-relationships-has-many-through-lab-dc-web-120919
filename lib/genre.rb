class Genre

    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


    def songs
        Song.all.select do |song_array|
            song_array.genre == self
        end
    end

    def artists
        self.songs.map do |song|
            song.artist
        end
    end
    
end