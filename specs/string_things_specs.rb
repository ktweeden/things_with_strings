require 'minitest/autorun'
require_relative '../models/string_things'


class TestStringThing < MiniTest::Test

  def test_same__is_same
    result = StringThings.same?("hello", "hello")
    assert_equal("hello is the same as hello", result)
  end

  def test_same__is_not_same
    result = StringThings.same?("bello", "hello")
    assert_equal("bello is not the same as hello", result)
  end
  
  def test_palindrome__is_palindrome
    result = StringThings.palindrome?("Hannah")
    assert_equal("Hannah is a palindrome", result)
  end

  def test_palindrome__is_not_palindrome
    result = StringThings.palindrome?("Bannah")
    assert_equal("Bannah is not a palindrome", result)
  end

  def test_isogram__is_isogram
    result = StringThings.isogram?("word")
    assert_equal("word is an isogram", result)
  end

  def test_isogram__is_not_isogram
    result = StringThings.isogram?("bubble")
    assert_equal("bubble is not an isogram", result)
  end

  def test_anagram__is_anagram
    result = StringThings.anagram?("cheese", "seeche")
    assert_equal("cheese is an anagram of seeche", result)
  end

  def test_anagram__is_not_anagram
    result = StringThings.anagram?("cheese", "please")
    assert_equal("cheese is not an anagram of please", result)
  end
end
