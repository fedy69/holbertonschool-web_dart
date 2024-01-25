import 'dart:io';
void main(List<String> args) {
    var arg = int.parse(args[0]);
    stdout.write('${arg} ');
    if(arg > 0) { print('is positive'); }
    else if(arg == 0) { print('is zero'); }
    else print('is negative');

}