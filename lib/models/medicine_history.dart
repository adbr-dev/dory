import 'package:hive_flutter/hive_flutter.dart';

part 'medicine_history.g.dart';

@HiveType(typeId: 2)
class MedicineHistory extends HiveObject {
  MedicineHistory({
    required this.medicineId,
    required this.alarmTime,
    required this.takeTime,
    required this.medicineKey,
    required this.name,
    required this.imagePath,
  });

  @HiveField(0)
  final int medicineId;

  @HiveField(1)
  final String alarmTime;

  @HiveField(2)
  final DateTime takeTime;

  @HiveField(3, defaultValue: -1)
  final int medicineKey;

  @HiveField(4, defaultValue: '삭제된 약')
  final String name;

  @HiveField(5)
  final String? imagePath;

  @override
  String toString() {
    return '{medicineId: $medicineId, alarmTime: $alarmTime, takeTime: $takeTime, medicineKey:$medicineKey, name: $name, imagePath:$imagePath}';
  }
}
