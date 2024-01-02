bool isPalindrome(String s) {
    if (s == null || s.length == 0) {
        return true;
    }
    if (s.length <= 2) {
        return false;
    }
    int left = 0;
    int right = s.length - 1;
    while (left < right) {
        if (s[left] != s[right]) {
        return false;
        }
        left++;
        right--;
    }
    return true;
}

String longestPalindrome(String s) {
  if (s.length < 3) return 'none';
  String longest = '';
  String current = '';
  for (int i = 0; i < s.length; i++) {
    for (int j = i; j < s.length; j++) {
      current = s.substring(i, j + 1);
      if (isPalindrome(current) && current.length > longest.length) {
        longest = current;
      }
    }
  }
  return longest != '' ? longest : 'none';
}