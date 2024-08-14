require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @file = File.open('sample_text.txt', 'r')
    
  end
  
  def test_swap
    @text = Text.new(@file.read)
    sample_text = <<~TEXT.chomp
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed vulputate ipsum.
      Suspendisse commodo sem arcu. Donec a nisi elit. Nullam eget nisi commodo, volutpat
      quam a, viverra mauris. Nunc viverra sed massa a condimentum. Suspendisse ornare justo
      nulla, sit amet mollis eros sollicitudin et. Etiam maximus molestie eros, sit amet dictum
      dolor ornare bibendum. Morbi ut massa nec lorem tincidunt elementum vitae id magna. Cras
      et varius mauris, at pharetra mi.
    TEXT
    assert_equal sample_text.gsub('a', 'e'), @text.swap('a', 'e')
  end
  
  def test_word_count
    sample_text = <<~TEXT.chomp
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed vulputate ipsum.
      Suspendisse commodo sem arcu. Donec a nisi elit. Nullam eget nisi commodo, volutpat
      quam a, viverra mauris. Nunc viverra sed massa a condimentum. Suspendisse ornare justo
      nulla, sit amet mollis eros sollicitudin et. Etiam maximus molestie eros, sit amet dictum
      dolor ornare bibendum. Morbi ut massa nec lorem tincidunt elementum vitae id magna. Cras
      et varius mauris, at pharetra mi.
    TEXT
    @text = Text.new(@file.read)
    assert_equal sample_text.split(' ').size, @text.word_count 
  end

  def teardown
    @file.close
  end
end

