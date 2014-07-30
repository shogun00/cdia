class Cdia::Cdia

  def initialize
    unless ARGV[0]
      $stderr.puts 'no file'
    end
    file_name = ARGV[0].chomp
    File.open(file_name) do |io|
      @cdiag = Cdia::Parse.new(io)
      @cdiag.parse
    end
  end

  def output
    Cdia::Diagram.new(@cdiag.code).create_diagram_text
  end

end