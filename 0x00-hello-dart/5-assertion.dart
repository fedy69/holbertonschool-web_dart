//import 'package:args/args.dart';
void main(List<String> args) {
  /*
  Write Your code below 
   */   
   var score = double.parse(args[0]);
   //var score = parser.parse(args)[0];
   assert(score >= 80, 'The score must be bigger or equal to 80');
   print('You Passed'); 
}