class Password {
  late String _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    if (!_password.contains(RegExp(r'[A-Z]'))) {
      return false;
    }

    if (!_password.contains(RegExp(r'[a-z]'))) {
      return false;
    }

    if (!_password.contains(RegExp(r'[0-9]'))) {
      return false;
    }

    return true;
  }

  String get password => _password;

  set password(String newPassword) {
    _password = newPassword;
  }

  @override
  String toString() {
    return 'Password $_password';
  }
}