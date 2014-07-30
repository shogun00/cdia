class Cdia::Diagram

  def initialize(code)
    @diagram = code
  end

  def create_diagram_text
    puts
    puts '###### Diagram ######'
    @diagram.each do |hash|
      hash.each do |key, value|
        puts '+------------------------+'
        puts "| #{key}"
        puts '+------------------------+'
        value.each do |v|
          puts "| #{v}"
        end
        puts '+------------------------+'
      end
      puts
    end
  end
end

