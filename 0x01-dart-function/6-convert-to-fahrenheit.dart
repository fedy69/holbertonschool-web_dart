List<double> convertToF(List<double> tempaturesInC){
    var tempaturesInF = tempaturesInC.map((temp) => (temp * 9/5) + 32);
    var roundedTempaturesInF = tempaturesInF.map((temp) => temp.toStringAsFixed(2));
    return roundedTempaturesInF.map((temp) => double.parse(temp)).toList();
}