import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String account;
  final String password;
  final String email;
  final String birthday;

  const User({
    this.account,
    this.password,
    this.email,
    this.birthday,
  });

  @override
  List<Object> get props => [
        account,
        password,
        email,
        birthday,
      ];

  factory User.fromJson(dynamic json) {
    return User(
      account: json['account'],
      password: json['password'],
      email: json['email'],
      birthday: json['birthday'],
    );
  }
}