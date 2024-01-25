String? longestPalindrome(String s) {
  bool isPalindrome(String str) {
    int start = 0;
    int end = str.length - 1;

    while (start < end) {
      if (str[start] != str[end]) {
        return false;
      }
      start++;
      end--;
    }

    return true;
  }

  if (s.length < 3) {
    return 'none';
  }

  String longest = '';

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  return longest.isNotEmpty ? longest : 'none';
}