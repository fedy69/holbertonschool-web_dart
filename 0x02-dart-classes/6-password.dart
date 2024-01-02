class Password {
    String user_password = "";

    Password({required String password}) : user_password = password;

    String get password => user_password;

    set password(String password) {
        this.user_password = password;
    }

    bool isValid(userJson) {
        return (password.length >= 8 && password.length <= 15) &&
            password.contains(RegExp(r'[A-Z]')) &&
            password.contains(RegExp(r'[a-z]')) &&
            password.contains(RegExp(r'[0-9]'));
}
     toString() {
        return "Your Password is: ${this.password}";
     }
}