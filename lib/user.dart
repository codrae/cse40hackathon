class User {
  String? name;
  String? id;
  String? password;
  int? age;
  String? local;
  bool? isClient = true;

  User(
      {this.name, this.id, this.password, this.age, this.local, this.isClient});

  Map<dynamic, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'password': password,
      'age': age,
      'local': local,
      'isClient': isClient,
    };
  }
}
