String? longestPalindrome(String s) {
  bool isPalindrome(int start, int end) {
    while (start < end) {
      if (s[start] != s[end]) {
        return false;
      }
      start++;
      end--;
    }
    return true;
  }

  if (s.length < 3) {
    return null;
  }

  String longest = '';

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      if (isPalindrome(i, j - 1)) {
        String substring = s.substring(i, j);
        if (substring.length > longest.length) {
          longest = substring;
        }
      }
    }
  }

  return longest.isNotEmpty ? longest : null;
}
