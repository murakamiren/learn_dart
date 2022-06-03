import 'dart:convert';

const jsonData = '{ "name": "test太郎", "age": 12 }';

class User {
  final String name;
  final int age;

  User({
    this.name,
    this.age,
  });

  factory User.fromJson(Map<String, dynamic> data) {
    final name = data["name"] as String;
    final age = data["age"] as int;
    return User(name: name, age: age);
  }
}

main() {
  //json to obj
  final parseJson = jsonDecode(jsonData);
  final userData = User.fromJson(parseJson);
  print(userData.age);
}
