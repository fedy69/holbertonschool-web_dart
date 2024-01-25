class Password {
  String _value;

  Password(String value) : _value = value;

  bool isValid() {
    return _value.length >= 8 && _value.contains(RegExp(r'[a-zA-Z]')) && _value.contains(RegExp(r'[0-9]'));
  }

  String getValue() => _value;

  set value(String newValue) {
    _value = newValue ?? ""; // Null check using null-aware operator
  }
}

