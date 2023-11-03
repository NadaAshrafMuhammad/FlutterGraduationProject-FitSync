class UserModel {
  final String username;
  final String email;
  final String password;
  final String avatar;

  UserModel({
    required this.username,
    required this.email,
    required this.password,
    required this.avatar,
  });

  factory UserModel.fromJSON(Map<String, dynamic> json) => UserModel(
    username: json['username'],
    email: json['email'],
    password: json['password'],
    avatar: json['avatar'],
  );
}
