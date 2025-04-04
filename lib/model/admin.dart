import 'package:flutter_application_1/model/user.dart';

class Admin extends User {
  final String adminID;
  final String permission;

  Admin({
    required this.adminID,
    required this.permission,
    required super.userID,
    required super.name,
    required super.email,
    required super.password,
    required super.role,
  });
}
