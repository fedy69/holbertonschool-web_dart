String longestUniqueSubstring(String str) {
  Set<String> charSet = {};
  int maxLength = 0;
  int start = 0;
  int longestStart = 0;

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    while (charSet.contains(currentChar)) {
      charSet.remove(str[start]);
      start++;
    }

    charSet.add(currentChar);

    if (i - start + 1 > maxLength) {
      maxLength = i - start + 1;
      longestStart = start;
    }
  }

  return str.substring(longestStart, longestStart + maxLength);
}
