class Password {
  late String password;

  bool isValid() {
    // Check the length of the password
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    // Check if the password contains uppercase letters
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return false;
    }

    // Check if the password contains lowercase letters
    if (!password.contains(RegExp(r'[a-z]'))) {
      return false;
    }

    // Check if the password contains numbers
    if (!password.contains(RegExp(r'[0-9]'))) {
      return false;
    }

    // If all conditions are met, the password is valid
    return true;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}