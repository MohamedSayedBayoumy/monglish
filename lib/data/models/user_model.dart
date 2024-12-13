class UserModel {
  final int? userId;
  final String? token;
  final String? userName;
  final String? email;
  final String? mobile;
  final String? gender;
  final String? nationality;
  final String? country;

  UserModel({
    this.userId = 99999,
    this.token = "",
    this.userName = "",
    this.email = "",
    this.mobile = "",
    this.gender = "",
    this.nationality = "",
    this.country = "",
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map["data"]['id'] ?? 99999,
      token: map['token'] ?? "",
      userName: map["data"]['name'] ?? "",
      email: map["data"]['email'] ?? "",
      mobile: map["data"]['mobile'] ?? "",
      nationality: map["data"]['nationality'] ?? "Egyption",
      gender: map["data"]['gender'] ?? "Male",
      country: map["data"]['country'] ?? "Egypt",
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'token': token,
      'userName': userName,
      'email': email,
      'mobile': mobile,
      'gender': gender,
      'nationality': nationality,
      'country': country,
    };
  }
}
