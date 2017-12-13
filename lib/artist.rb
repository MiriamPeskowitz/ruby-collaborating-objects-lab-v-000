
# class Artist
#   @@all = []
#   attr_accessor :name, :songs
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def self.all
#     @@all
#   end
#
#   def add_song(song)
#     @songs << song
#   end
#
#   def self.find_or_create_by_name(name)
#     self.find(name) ? self.find(name) : self.create(name)
#   end
#
#   def self.find(name)
#     self.all.find {|artist| artist.name == name }
#   end
#
#
#   def self.create(name)
#     self.new(name).tap {|artist| artist.save}
#   end
#
#   def save
#     @@all << self
#   end
#
#   def print_songs
#     songs.each {|song| puts song.name}
#   end
# end
#

require 'pry'

class Artist
#if this artist is not in the array, create the artist, else send string of the artist's name to the Artist class,
attr_accessor :name, :songs
@@all = []

    def initialize(name)
      @name = name
      @songs = []
    end

    def songs
      @songs
    end

    def add_song(song)
      song.artist = self
      @songs << song
    end

    def save
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find_or_create_by_name(name)
      self.find(name) ? self.find(name) : name = Artist.new(name)

      # self.find(name) {|artist| artist == name }
      #   if artist == name
      #     self.name
      #   else
      #     add_song_by_name(name)
      #   end
    end

    def self.find(name)
      self.all.find {|a| a.name == name}
    end


    def add_song_by_name(name)
      song = Song.new(name)
      song.artist = self
      @songs<<song
    end

    def print_songs(name)
      binding.pry
      @songs.each {|song| puts song.name}
    end
end
