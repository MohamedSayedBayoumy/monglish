class LoginResponseModel {
  final int userId;
  final String token;
  final String userName;

  LoginResponseModel({
    required this.userId,
    required this.token,
    required this.userName,
  });

  factory LoginResponseModel.fromMap(Map<String, dynamic> map) {
    return LoginResponseModel(
      userId: map["data"]['id'] ?? 99999,
      token: map["data"]['token'] ?? "",
      userName: map["data"]['name'] ?? "",
    );
  }
}
