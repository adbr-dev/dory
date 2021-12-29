import 'dart:io';

import 'package:flutter/material.dart';

class AddAlarmPage extends StatelessWidget {
  const AddAlarmPage({
    Key? key,
    required this.medicineImage,
    required this.medicineName,
  }) : super(key: key);

  final File? medicineImage;
  final String medicineName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          medicineImage == null ? Container() : Image.file(medicineImage!),
          Text(medicineName),
        ],
      ),
    );
  }
}
