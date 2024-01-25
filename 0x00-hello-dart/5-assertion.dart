void main(List<String> args) {
  if (args.isNotEmpty) {
    var score = double.tryParse(args[0]);

    if (score != null && score >= 80) {
      print('You Passed');
    } else {
      print('The score must be a valid number and greater or equal to 80');
    }
}
