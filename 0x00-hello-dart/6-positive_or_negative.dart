void main(List<String> args) {
    var n = int.parse(args[0]);
    if (n == 0) {
        print('${n} is zero');
    } else if (n > 0) {
        print('${n} is positive');
    } else {
        print('${n} is negative');
    }
}