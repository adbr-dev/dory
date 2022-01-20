import 'package:dory/components/dory_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryEmpty extends StatelessWidget {
  const HistoryEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Center(child: Text('복약한 기록이 없습니다.')),
        const SizedBox(height: smallSpace),
        Text(
          '약 복용 후 복용했다고 알려주세요',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: largeSpace),
        const Align(
          alignment: Alignment(-0.6, 0),
          child: Icon(CupertinoIcons.arrow_down),
        ),
        const SizedBox(height: regularSpace),
      ],
    );
  }
}
