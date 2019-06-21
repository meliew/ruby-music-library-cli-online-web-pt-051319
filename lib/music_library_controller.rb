require 'pry'
class MusicLibraryController



  def initialize(path= "./db/mp3s")
    MusicImporter.new(path).import
  end


  def call
    loop do
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      answer = gets.chomp
      if answer == 'exit'
        break
      end
    end
  end

  def list_songs
    Song.all.sort_by(&:name).each.with_index(1) do |song, i|
      puts "#{i}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
    end
  end

  def list_artists
    Artist.all.sort_by(&:name).each.with_index(1) do |art, idx|
      puts "#{idx}. #{art.name}"
    end
  end

  def play_song
  end




end
