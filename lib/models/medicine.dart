import 'package:hive/hive.dart';

part 'medicine.g.dart';

@HiveType(typeId: 1)
class Medicine {
  Medicine({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.alarms,
  });

  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String? imagePath;

  @HiveField(3)
  final List<String> alarms;

  @override
  String toString() {
    return '{id: $id, name: $name, imagePath: $imagePath, alarms: $alarms}';
  }
}
