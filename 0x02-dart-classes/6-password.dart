import '6-password.dart';

class User {
  int id;
  String name;
  int age;
  double height;
  Password _userPassword;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    String? userPassword,
  }) : _userPassword = Password(userPassword ?? "");

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      age: json['age'] ?? 0,
      height: json['height'] ?? 0.0,
      userPassword: json['user_password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': _userPassword.value,
    };
  }

  @override
  String toString() => 'User(id: $id, name: $name, age: $age, height: $height, Password: ${_userPassword.isValid()})';

  set userPassword(String newPassword) {
    _userPassword.value = newPassword ?? "";
    print("Password is valid: ${_userPassword.isValid()}");
  }
}
