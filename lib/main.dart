import 'package:dory/components/dory_themes.dart';
import 'package:dory/pages/home_page.dart';
import 'package:dory/repositories/dory_hive.dart';
import 'package:dory/repositories/medicine_history_repository.dart';
import 'package:dory/repositories/medicine_repository.dart';
import 'package:dory/services/dory_notification_serivce.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

final notification = DoryNotificationService();
final hive = DoryHive();
final medicineRepository = MedicineRepository();
final historyRepository = MedicineHistoryRepository();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  await notification.initializeTimeZone();
  await notification.initializeNotification();

  await hive.initializeHive();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DoryThemes.lightTheme,
      home: const HomePage(),
      builder: (context, child) => MediaQuery(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: child!,
        ),
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      ),
    );
  }
}
