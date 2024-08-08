class TextAnalyzer
  def process
    filename = "sample_text.txt"
    file = File.open(filename)
    count = 0
    count = file.read.scan(yield).size
    # file.each_line do |line|
    # end
    puts count
  end
end

analyzer = TextAnalyzer.new
analyzer.process { /^\n/ }
analyzer.process { /^/ }
analyzer.process { /\b\w+\b/ }

class TextAnalyzer
  def process
    file = File.open('sample_text.txt', 'r')
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n")} lines" }
analyzer.process { |text| puts "#{text.split(' ').count} words" }