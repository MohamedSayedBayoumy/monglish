class LoginResponseModel {
  final int userId;
  final String token;
  final String userName;
  final String email;
  final String mobile;
  final String gender;
  final String nationality;
  final String country;

  LoginResponseModel({
    required this.userId,
    required this.token,
    required this.userName,
    required this.email,
    required this.mobile,
    required this.gender,
    required this.nationality,
    required this.country,
  });

  factory LoginResponseModel.fromMap(Map<String, dynamic> map) {
    return LoginResponseModel(
      userId: map["data"]['id'] ?? 99999,
      token: map["data"]['token'] ?? "",
      userName: map["data"]['name'] ?? "",
      email:  map["data"]['email'] ?? "",
      mobile: map["data"]['mobile'] ?? "",
      nationality: map["data"]['nationality'] ?? "Egyption",
      gender: map["data"]['gender'] ?? "Male",
      country: map["data"]['country'] ?? "Egypt",
    );
  }
}
