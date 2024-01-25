int sub(int a, int b) {
  return a - b;
}

// Function to show the results of add and sub functions
String showFunc(int a, int b) {
  int sumResult = add(a, b);
  int subResult = sub(a, b);

  String resultMessage =
      'Add $a + $b = $sumResult\nSub $a - $b = $subResult';

  return resultMessage;
}