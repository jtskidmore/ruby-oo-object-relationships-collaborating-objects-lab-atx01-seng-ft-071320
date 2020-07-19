

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    mp3_files = Dir.children("#{@path}")
    @files = mp3_files
  end

  def import
    @files.each do |song|
      Song.new_by_filename(song)
    end
  end

end
