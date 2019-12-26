require 'ex48/parser.rb'
require 'test/unit'

class TestParser < Test::Unit::TestCase

  def test_parse_subject()
    word_list =['stop', 'the']
    assert_raise(ParserError) {parse_subject(word_list)}
  end

  # def test_sentence()
  #   x = Sentence.new(['noun', 'Tim'], ['verb', 'walks'], ['stop', 'by'], ['noun','car'])
  #   assert_equal('Tim', x.subject)
  #   assert_equal('walks', x.verb)
  #   assert_equal(nil, x.numbers)
  #   assert_equal('car', x.object)
  # end

  def test_parse_sentence
    word_list1 = [['noun', 'Tim'], ['verb', 'walks'], ['stop', 'by'], ['stop', 'the'], ['noun', 'cars']]
    x = parse_sentence(word_list1)
    #returned_list = [['noun', 'Tim'], ['verb', 'walks'], ['numbers', '20'] ['noun','cars']]
    assert_equal('Tim', x.subject)
    assert_equal('walks', x.verb)
    assert_equal(nil, x.numbers)
    assert_equal('cars', x.object)
  end
end
