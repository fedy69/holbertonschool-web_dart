double calculateArea(double width, double height) {
  var roundedArea = (width * height)/2;
  var roundedString = roundedArea.toStringAsFixed(2);
    var area = double.parse(roundedString);
    return area;
}