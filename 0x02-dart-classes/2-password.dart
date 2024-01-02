class Password {
    String password = "";

    Password() {
        this.password = password;
    }
    bool isValid() {
        return (password.length >= 8 && password.length <= 15) &&
            password.contains(RegExp(r'[A-Z]')) &&
            password.contains(RegExp(r'[a-z]')) &&
            password.contains(RegExp(r'[0-9]'));
}
     toString() {
        return "Your Password is: ${this.password}";
     }
}