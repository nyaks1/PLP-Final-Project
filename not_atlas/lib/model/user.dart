class User {
  final String id;
  final String username;
  final String email;
  final String password;
  final String name;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.name,
  });

  static User fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'], 
      email: map['email'], 
      password: map['password'],
      username: map['username'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'username': username,
    };
  }
 

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, password: $password, name: $name)';
  }
}
