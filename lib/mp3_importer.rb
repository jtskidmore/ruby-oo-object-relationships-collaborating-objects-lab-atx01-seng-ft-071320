require 'pry'


class MP3Importer

  @@files = []

  def initialize (file)
    Dir.glob("*mp3").each do |f|
      binding.pry
      @@files << f
    end
  end

  def path
    @file
  end

  def files
    @@files
  end

end
