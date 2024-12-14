class DashBoardModel {
  final dynamic message;
  final String? status;
  final Data? data;

  DashBoardModel({
    this.message,
    this.status,
    this.data,
  });

  factory DashBoardModel.fromJson(Map<String, dynamic> json) {
    return DashBoardModel(
      message: json['message'],
      status: json['status'],
      data: json['data'] != null ? Data.fromJson(json['data']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'status': status,
      'data': data?.toJson(),
    };
  }
}

class Data {
  final Level? level;
  final School? school;
  final List<PackageClub>? packageClubs;

  Data({
    this.level,
    this.school,
    this.packageClubs,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      level: json['level'] != null ? Level.fromJson(json['level']) : null,
      school: json['school'] != null ? School.fromJson(json['school']) : null,
      packageClubs: json['package_clubs'] != null
          ? (json['package_clubs'] as List)
              .map((item) => PackageClub.fromJson(item))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'level': level?.toJson(),
      'school': school?.toJson(),
      'packageClubs': packageClubs?.map((item) => item.toJson()).toList(),
    };
  }
}

class Level {
  final int? id;
  final dynamic code;
  final int? fieldId;
  final int? order;
  final String? name;
  final String? notes;
  final int? removed;
  final String? searchText;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final LevelPivot? pivot;
  final School? field;

  Level({
    this.id,
    this.code,
    this.fieldId,
    this.order,
    this.name,
    this.notes,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.pivot,
    this.field,
  });

  factory Level.fromJson(Map<String, dynamic> json) {
    return Level(
      id: json['id'],
      code: json['code'],
      fieldId: json['fieldId'],
      order: json['order'],
      name: json['name'],
      notes: json['notes'],
      removed: json['removed'],
      searchText: json['searchText'],
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      pivot: json['pivot'] != null ? LevelPivot.fromJson(json['pivot']) : null,
      field: json['field'] != null ? School.fromJson(json['field']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'fieldId': fieldId,
      'order': order,
      'name': name,
      'notes': notes,
      'removed': removed,
      'searchText': searchText,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'pivot': pivot?.toJson(),
      'field': field?.toJson(),
    };
  }
}

class PackageClub {
  final int? clubTypeId;
  final int? delClubId;
  final int? count;
  final String? name;

  PackageClub({
    this.clubTypeId,
    this.delClubId,
    this.count,
    this.name,
  });

  factory PackageClub.fromJson(Map<String, dynamic> json) {
    return PackageClub(
      clubTypeId: json['club_type_id'],
      delClubId: json['del_club_id'],
      count: json['count'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'clubTypeId': clubTypeId,
      'delClubId': delClubId,
      'count': count,
      'name': name,
    };
  }
}

class School {
  final int? id;
  final String? code;
  final int? parentId;
  final int? nextId;
  final int? order;
  final String? name;
  final String? nameLocal;
  final int? rootId;
  final int? type;
  final int? removed;
  final String? searchText;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final School? root;

  School({
    this.id,
    this.code,
    this.parentId,
    this.nextId,
    this.order,
    this.name,
    this.nameLocal,
    this.rootId,
    this.type,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.root,
  });

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      id: json['id'],
      code: json['code'],
      parentId: json['parentId'],
      nextId: json['nextId'],
      order: json['order'],
      name: json['name'],
      nameLocal: json['nameLocal'],
      rootId: json['rootId'],
      type: json['type'],
      removed: json['removed'],
      searchText: json['searchText'],
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      root: json['root'] != null ? School.fromJson(json['root']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'parentId': parentId,
      'nextId': nextId,
      'order': order,
      'name': name,
      'nameLocal': nameLocal,
      'rootId': rootId,
      'type': type,
      'removed': removed,
      'searchText': searchText,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'root': root?.toJson(),
    };
  }
}

class LevelPivot {
  final int? userId;
  final int? levelId;

  LevelPivot({
    this.userId,
    this.levelId,
  });

  factory LevelPivot.fromJson(Map<String, dynamic> json) {
    return LevelPivot(
      userId: json['userId'],
      levelId: json['levelId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'levelId': levelId,
    };
  }
}
