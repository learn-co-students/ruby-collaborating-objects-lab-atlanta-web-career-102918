class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all 
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
  end

  def save
    Artist.all << self 
  end

  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name)
    end
  end

  def print_songs
    self.songs.each {|s| puts s.name}
  end
end