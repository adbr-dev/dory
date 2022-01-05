import 'package:hive_flutter/hive_flutter.dart';

part 'medicine_history.g.dart';

@HiveType(typeId: 2)
class MedicineHistory extends HiveObject {
  MedicineHistory({
    required this.medicineId,
    required this.alarmTime,
    required this.takeTime,
    required this.medicineKey,
  });

  @HiveField(0)
  final int medicineId;

  @HiveField(1)
  final String alarmTime;

  @HiveField(2)
  final DateTime takeTime;

  @HiveField(3, defaultValue: -1)
  final int medicineKey;

  @override
  String toString() {
    return '{medicineId: $medicineId, alarmTime: $alarmTime, takeTime: $takeTime, medicineKey:$medicineKey}';
  }
}
