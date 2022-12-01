# frozen_string_literal: true

# An Album class that stores an array of songs
class Album
  include Enumerable

  # An array object of songs. Each song is represented in a String
  attr_reader :songs

  # Initializes a new Album with an empty array of songs
  def initialize
    @songs = []
  end

  # Add a song to the Album object's songs array
  def add_song(song)
    songs << song if song.is_a?(String)
  end

  # Yield each song in the Album to a block
  def each(&block)
    songs.each(&block)
  end
end
