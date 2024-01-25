class Password {
  String _value;

  Password(String value) : _value = value;

  bool get isValid => _value.length >= 8 && _value.contains(RegExp(r'[a-zA-Z]')) && _value.contains(RegExp(r'[0-9]'));

  String get value => _value;

  set value(String newValue) => _value = newValue ?? "";

  @override
  String toString() => 'Password $_value';
}
