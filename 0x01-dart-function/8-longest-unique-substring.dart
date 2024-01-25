String longestUniqueSubstring(String str) {
  Map<String, int> charIndexMap = {};
  int maxLength = 0;
  int start = 0;
  int longestStart = 0;

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];
    if (charIndexMap.containsKey(currentChar) && charIndexMap[currentChar] >= start) {
      start = charIndexMap[currentChar] + 1;
    }

    charIndexMap[currentChar] = i;

    if (i - start + 1 > maxLength) {
      maxLength = i - start + 1;
      longestStart = start;
    }
  }

  return str.substring(longestStart, longestStart + maxLength);
}


