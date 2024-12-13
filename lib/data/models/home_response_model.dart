class HomeModel {
  final dynamic message;
  final String? status;
  final Data? data;

  HomeModel({
    this.message,
    this.status,
    this.data,
  });
}

class Data {
  final int? id;
  final String? code;
  final String? oldCode;
  final String? name;
  final bool? isEmailActivated;
  final bool? isMobileActivated;
  final String? shortName;
  final String? email;
  final String? mobile;
  final dynamic gender;
  final int? age;
  final Package? package;
  final DateTime? packageStartAt;
  final DateTime? packageExpireAt;
  final bool? isPackageExpired;
  final dynamic nationality;
  final StatusType? statusType;
  final List<dynamic>? roles;
  final Level? level;
  final School? track;
  final School? school;
  final dynamic monglishEducation;
  final List<dynamic>? parents;
  final int? remainingLevels;
  final int? removed;
  final String? notes;
  final Class? dataClass;
  final Record? record;
  final dynamic phone;
  final dynamic country;
  final dynamic birthdate;
  final dynamic city;
  final dynamic address;
  final dynamic postalCode;
  final List<Club>? clubs;
  final List<dynamic>? assessments;
  final List<dynamic>? submitted;
  final int? score;
  final int? points;
  final dynamic admissionStatus;
  final List<PackageClub>? packageClubs;
  final List<Activity>? activities;
  final Lookups? lookups;

  Data({
    this.id,
    this.code,
    this.oldCode,
    this.name,
    this.isEmailActivated,
    this.isMobileActivated,
    this.shortName,
    this.email,
    this.mobile,
    this.gender,
    this.age,
    this.package,
    this.packageStartAt,
    this.packageExpireAt,
    this.isPackageExpired,
    this.nationality,
    this.statusType,
    this.roles,
    this.level,
    this.track,
    this.school,
    this.monglishEducation,
    this.parents,
    this.remainingLevels,
    this.removed,
    this.notes,
    this.dataClass,
    this.record,
    this.phone,
    this.country,
    this.birthdate,
    this.city,
    this.address,
    this.postalCode,
    this.clubs,
    this.assessments,
    this.submitted,
    this.score,
    this.points,
    this.admissionStatus,
    this.packageClubs,
    this.activities,
    this.lookups,
  });
}

class Activity {
  final String? name;
  final DateTime? date;

  Activity({
    this.name,
    this.date,
  });
}

class Club {
  final int? id;
  final String? code;
  final String? name;
  final String? nameLocal;
  final int? typeId;
  final int? schoolId;
  final int? attendeesCountLimit;
  final int? removed;
  final String? searchText;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final ClubPivot? pivot;

  Club({
    this.id,
    this.code,
    this.name,
    this.nameLocal,
    this.typeId,
    this.schoolId,
    this.attendeesCountLimit,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });
}

class ClubPivot {
  final int? userId;
  final int? clubId;

  ClubPivot({
    this.userId,
    this.clubId,
  });
}

class Class {
  final int? id;
  final dynamic code;
  final String? name;
  final DateTime? startDate;
  final DateTime? endDate;
  final int? levelId;
  final dynamic supervisorId;
  final dynamic teacherId;
  final dynamic coTeacherId;
  final int? removed;
  final String? searchText;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final ClassPivot? pivot;

  Class({
    this.id,
    this.code,
    this.name,
    this.startDate,
    this.endDate,
    this.levelId,
    this.supervisorId,
    this.teacherId,
    this.coTeacherId,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });
}

class ClassPivot {
  final int? userId;
  final int? classId;

  ClassPivot({
    this.userId,
    this.classId,
  });
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
}

enum ParentsIds { empty, the2 }

class School {
  final int? id;
  final String? code;
  final int? parentId;
  final int? nextId;
  final int? order;
  final String? name;
  final String? nameLocal;
  final int? rootId;
  final ParentsIds? parentsIds;
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
    this.parentsIds,
    this.type,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.root,
  });
}

class LevelPivot {
  final int? userId;
  final int? levelId;

  LevelPivot({
    this.userId,
    this.levelId,
  });
}

class Lookups {
  final List<StatusType>? genders;
  final List<StatusType>? nationalities;
  final List<StatusType>? countries;
  final List<StatusType>? statusTypes;
  final List<StatusType>? educationTypes;
  final List<School>? schools;
  final List<StatusType>? packages;

  Lookups({
    this.genders,
    this.nationalities,
    this.countries,
    this.statusTypes,
    this.educationTypes,
    this.schools,
    this.packages,
  });
}

class StatusType {
  final String? name;
  final String? nameLocal;
  final int? id;

  StatusType({
    this.name,
    this.nameLocal,
    this.id,
  });
}

class Package {
  final int? id;
  final String? name;
  final String? nameLocal;
  final int? months;
  final int? removed;

  Package({
    this.id,
    this.name,
    this.nameLocal,
    this.months,
    this.removed,
  });
}

class PackageClub {
  final int? id;
  final int? packageId;
  final int? clubTypeId;
  final String? type;
  final int? sessions;
  final String? notes;
  final int? delClubId;
  final int? count;
  final String? name;
  final String? nameLocal;

  PackageClub({
    this.id,
    this.packageId,
    this.clubTypeId,
    this.type,
    this.sessions,
    this.notes,
    this.delClubId,
    this.count,
    this.name,
    this.nameLocal,
  });
}

class Record {
  final int? id;
  final String? code;
  final String? name;
  final String? mobile;
  final String? email;
  final dynamic zoomEmail;
  final String? password;
  final dynamic tempPassword;
  final dynamic birthdate;
  final dynamic gender;
  final dynamic nationalityId;
  final dynamic personalEmail;
  final dynamic address;
  final dynamic postalCode;
  final dynamic countryId;
  final dynamic city;
  final dynamic phone;
  final dynamic nationalId;
  final dynamic monglishEducation;
  final int? monglishStatusTypeId;
  final int? monglishRemainingLevels;
  final int? monglishPackageId;
  final DateTime? monglishPackageStartAt;
  final dynamic reportingId;
  final int? status;
  final int? activationStatus;
  final String? notes;
  final int? removed;
  final String? oldCode;
  final String? searchText;
  final dynamic emailVerifiedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? levelId;
  final int? trackId;
  final int? schoolId;
  final int? classId;
  final List<int>? clubsIds;
  final List<dynamic>? parentsIds;

  Record({
    this.id,
    this.code,
    this.name,
    this.mobile,
    this.email,
    this.zoomEmail,
    this.password,
    this.tempPassword,
    this.birthdate,
    this.gender,
    this.nationalityId,
    this.personalEmail,
    this.address,
    this.postalCode,
    this.countryId,
    this.city,
    this.phone,
    this.nationalId,
    this.monglishEducation,
    this.monglishStatusTypeId,
    this.monglishRemainingLevels,
    this.monglishPackageId,
    this.monglishPackageStartAt,
    this.reportingId,
    this.status,
    this.activationStatus,
    this.notes,
    this.removed,
    this.oldCode,
    this.searchText,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.levelId,
    this.trackId,
    this.schoolId,
    this.classId,
    this.clubsIds,
    this.parentsIds,
  });
}
