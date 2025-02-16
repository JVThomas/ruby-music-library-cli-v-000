require 'pry'
class MusicImporter

  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    Dir.entries(@path).select{|file| file.include?(".mp3")}
  end

  def import
    files.each{|file| Song.create_from_filename(file)}
  end
end