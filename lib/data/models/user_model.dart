class UserModel {
  final int? id;
  final String? token;
  final String? name;
  final String? email;
  final String? mobile;
  final String? gender;
  final String? nationality;
  final String? country;

  UserModel({
    this.id = 99999,
    this.token = "",
    this.name = "",
    this.email = "",
    this.mobile = "",
    this.gender = "",
    this.nationality = "",
    this.country = "",
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map["data"]['id'] ?? 99999,
      token: map['token'] ?? "",
      name: map["data"]['name'] ?? "",
      email: map["data"]['email'] ?? "",
      mobile: map["data"]['mobile'] ?? "",
      nationality: map["data"]['nationality'] ?? "Egyption",
      gender: map["data"]['gender'] ?? "Male",
      country: map["data"]['country'] ?? "Egypt",
    );
  }

  factory UserModel.fromJsonOfLocalStorage(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? 99999,
      token: map['token'] ?? "",
      name: map['name'] ?? "",
      email: map['email'] ?? "",
      mobile: map['mobile'] ?? "",
      nationality: map['nationality'] ?? "Egyption",
      gender: map['gender'] ?? "Male",
      country: map['country'] ?? "Egypt",
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'token': token,
      'name': name,
      'email': email,
      'mobile': mobile,
      'gender': gender,
      'nationality': nationality,
      'country': country,
    };
  }
}
