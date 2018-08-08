class Artist
  attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @songs = []
  # @@all.push(self)
end

def self.all
  @@all
end

def add_song(song)
  @songs.push(song)
  song.artist= self
end

def add_song_by_name(name)
  song = Song.new(name)
 song.artist = self
end

def self.song_count
  Song.all.count
end

def songs
  Song.all.select {|song| song.artist == self}
end

end
