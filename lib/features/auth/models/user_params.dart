class UserParams {
  final String? name;
  final String email;
  final String password;

  UserParams({
    this.name,
    required this.email,
    required this.password,
  }) {
    if (!email.contains('@') || password.length < 8) {
      throw Exception('ERROR INPUTS');
    }
  }
}
