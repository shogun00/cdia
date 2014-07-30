module Cdia
  class Cdiag

    def initialize
      unless ARGV[0]
        $stderr.puts 'no file'
      end
      file_name = ARGV[0].chomp
      File.open(file_name) do |io|
        @cdia = Cdia::Parse.new(io)
        @cdia.parse
      end
    end

    def output
      Cdia::Diagram.new(@cdia.code).create_diagram_text
    end

  end
end