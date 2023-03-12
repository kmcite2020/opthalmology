// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:opthalmology/features/auth/models/user_params.dart';

class Users extends Equatable {
  final List<User> users;
  const Users({
    required this.users,
  });

  Users copyWith({
    List<User>? users,
  }) {
    return Users(
      users: users ?? this.users,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'users': users.map((x) => x.toMap()).toList(),
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      users: List<User>.from(
        (map['users']).map<User>(
          (x) => User.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Users.fromJson(String source) => Users.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [users];
}

class User extends Equatable {
  final String name;
  final String email; // it's an ID
  final String password;
  const User({
    required this.name,
    required this.email,
    required this.password,
  });

  User copyWith({
    String? name,
    String? email,
    String? password,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, email, password];

  static fromParams(UserParams parameters) {
    return User(
      name: parameters.name ?? '',
      email: parameters.email,
      password: parameters.password,
    );
  }
}
