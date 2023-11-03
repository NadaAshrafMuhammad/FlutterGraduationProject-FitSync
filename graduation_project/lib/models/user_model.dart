class UserModel {
  final String username;
  final String email;
  final String password;
  final String passwordConfirm;

  UserModel({
    required this.username,
    required this.email,
    required this.password,
    required this.passwordConfirm,
  });

  factory UserModel.fromJSON(Map<String, dynamic> json) => UserModel(
    username: json['username'],
    email: json['email'],
    password: json['password'],
    passwordConfirm: json['passwordConfirm'],
  );
}
