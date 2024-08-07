class TextAnalyzer
  def process
    filename = "sample_text.txt"
    file = File.open(filename)
  end
end

analyzer = TextAnalyzer.new
analyzer.process { # your implementation }
analyzer.process { # your implementation }
analyzer.process { # your implementation }