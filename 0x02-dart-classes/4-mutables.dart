class Password {
    String _password = "";

    Password({required String password}) : _password = password;

    String get password{
        return _password;
    }

    set password(String value) {
        _password = value;
    }

    bool isValid() {
        return (this.password.length >= 8 && this.password.length <= 15) &&
            this.password.contains(RegExp(r'[A-Z]')) &&
            this.password.contains(RegExp(r'[a-z]')) &&
            this.password.contains(RegExp(r'[0-9]'));


}
     toString() {
        return "Your Password is: ${this.password}";
     }
}