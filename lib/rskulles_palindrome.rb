# frozen_string_literal: true

require 'rskulles_palindrome/version'

class Error < StandardError; end

# Your code goes here...
#
class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  def processed_content
    letters.downcase
  end

  def letters
    scan(/[a-z]/i).join
  end

end
