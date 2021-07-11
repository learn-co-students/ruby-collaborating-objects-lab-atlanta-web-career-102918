class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end
  
  def files
    num_of_files = Dir.entries(@path).length
    normalized_files = Dir.entries(@path).slice(2, num_of_files - 1)
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end