class LoginResponseModel {
  final int userId;
  final String token;

  LoginResponseModel({required this.userId, required this.token});

  factory LoginResponseModel.fromMap(Map<String, dynamic> map) {
    return LoginResponseModel(
      userId: map["data"]['id'] ?? 99999,
      token: map["data"]['token'] ?? "",
    );
  }
}
