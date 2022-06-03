import 'dart:convert';
import 'dart:ffi';

const jsonData = '{ "name": "test太郎", "age": 12 }';

class User {
  final String name;
  final int age;

  User({
    required this.name,
    required this.age,
  });

  factory User.fromJson(Map<String, dynamic> data) {
    final name = data["name"] as String;
    final age = data["age"] as int;
    return User(name: name, age: age);
  }
}

main() {
  final parseJson = jsonDecode(jsonData);
  final userData = User.fromJson(parseJson);
  print(userData.age);
}
