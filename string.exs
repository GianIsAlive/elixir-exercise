# Given a string, check if all the characters in the string is palindrome
# Example:
# Str.isPalindrome("hello") -> false
# Str.isPalindrome("hannah") -> true

defmodule Str do
  def isPalindrome(str) when str == "" do
    true
  end
  def isPalindrome(str) do
    head = String.at(str, 0)
    tail = String.at(str, -1)
    if head == tail do
      isPalindrome(String.slice(str, 1..-2))
    else
      false
    end
  end
end
