class Wraitah
  attr_accessor :cols, :list
  def initialize(cols, list)
    @cols = cols
    @list = list
  end

  def write(filename)
    file = File.new("output/#{filename}", 'w')
    list.each do |line|
      wat = cols.map{|column| line[column]}.join(";")
      puts wat
      file.puts(wat)
    end
    file.close
  end
end
