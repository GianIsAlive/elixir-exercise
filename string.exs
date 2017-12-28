# Given a string, check if all the characters in the string is palindrome
# Example:
# Str.isPalindrome("hello") -> false
# Str.isPalindrome("hannah") -> true

defmodule Str do
  def is_palindrome(str) when str == "" do
    true
  end
  def is_palindrome(str) do
    head = String.at(str, 0)
    tail = String.at(str, -1)
    if head == tail do
      is_palindrome(String.slice(str, 1..-2))
    else
      false
    end
  end
end

# Compress a string by counting the repeated characters
# Example: 
# run_on_compression('abcccccca') //-> a1b1c6a1

defmodule Str do
  def compress(i_str, o_str) when i_str == "" do
    Enum.join([o_str, i_str])
  end
  def compress(i_str, o_str, count) do
    new_str = String.slice(i_str, 1..-1)
    if String.at(i_str, 0) != String.at(o_str, -2) do
      newcount = 1
      compressed = Enum.join([o_str, String.at(i_str, 0), newcount])
      compress(new_str, compressed, newcount)
    else
      newcount = count + 1
      compressed = Enum.join([String.slice(o_str, 0..-2), newcount])
      compress(new_str, compressed, newcount)
    end
  end
  def run_on_compression(str) do
    compress(str, "", 0)
  end
end
