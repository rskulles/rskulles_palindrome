# frozen_string_literal: true

require 'test_helper'

class RskullesPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RskullesPalindrome::VERSION
  end

  def test_non_palindrome
    refute 'apple'.palindrome?
  end

  def test_literal_palindrome
    assert 'racecar'.palindrome?
  end

  def test_mixed_case_palindrome
    assert 'RaceCar'.palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
    assert 'A man, a plan, a canal - Panama'.palindrome?
  end

  def test_letters
    method_result = "Madam, I'm Adam.".send(:letters)
    assert_equal method_result, 'MadamImAdam', "letters returned '#{method_result}'"
  end
end
