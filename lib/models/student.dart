import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'student.g.dart';

@HiveType(typeId: 0)
class Student extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String firstName;

  @HiveField(2)
  String lastName;

  @HiveField(3)
  String? email;

  @HiveField(4)
  String? phone;

  @HiveField(5)
  String? certificateNumber;

  @HiveField(6)
  DateTime createdAt;

  Student({
    String? id,
    required this.firstName,
    required this.lastName,
    this.email,
    this.phone,
    this.certificateNumber,
    DateTime? createdAt,
  })  : id = id ?? const Uuid().v4(),
        createdAt = createdAt ?? DateTime.now();

  String get fullName => '$firstName $lastName';
}
