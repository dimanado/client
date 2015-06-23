class Work_file
  def self.read
  	elements = []
    File.open("math.txt") do |f|
    while readl = f.gets
      #x1, x2, str = readl.chomp.split(" ")
      elements << readl
      end
      return elements
    end
  end
end

