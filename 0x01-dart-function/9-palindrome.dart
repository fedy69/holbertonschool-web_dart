bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  
  String reversedString = s.split('').reversed.join('');
  return s.toLowerCase() == reversedString.toLowerCase();
}