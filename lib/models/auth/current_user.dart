// To parse this JSON data, do
//
//     final currentUser = currentUserFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CurrentUser currentUserFromJson(String str) =>
    CurrentUser.fromJson(json.decode(str));

String currentUserToJson(CurrentUser data) => json.encode(data.toJson());

class CurrentUser {
  CurrentUser({
    required this.id,
    required this.branchId,
    required this.name,
    required this.noTelp,
    required this.email,
    required this.emailVerifiedAt,
    required this.roleId,
    required this.avatar,
    required this.signature,
    required this.lang,
    required this.isActive,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  dynamic branchId;
  String name;
  dynamic noTelp;
  String email;
  dynamic emailVerifiedAt;
  dynamic roleId;
  dynamic avatar;
  dynamic signature;
  dynamic lang;
  int isActive;
  dynamic createdBy;
  DateTime createdAt;
  DateTime updatedAt;

  factory CurrentUser.fromJson(Map<String, dynamic> json) => CurrentUser(
        id: json["id"],
        branchId: json["branch_id"],
        name: json["name"],
        noTelp: json["no_telp"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        roleId: json["role_id"],
        avatar: json["avatar"],
        signature: json["signature"],
        lang: json["lang"],
        isActive: json["is_active"],
        createdBy: json["created_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "branch_id": branchId,
        "name": name,
        "no_telp": noTelp,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "role_id": roleId,
        "avatar": avatar,
        "signature": signature,
        "lang": lang,
        "is_active": isActive,
        "created_by": createdBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
