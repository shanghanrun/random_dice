import 'package:flutter/material.dart';
import 'package:random_dice/const/colors.dart';

class SettingsScreen extends StatelessWidget {
  final double threshold; // Slider 현재값
  final ValueChanged<double> onThresholdChange; //Slider값 변경될 때 실행되는 함수

  const SettingsScreen({
    Key? key,
    required this.threshold,
    required this.onThresholdChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(children: [
          Text('민감도  ',
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
          Text(
            threshold.toStringAsFixed(1),
            style: const TextStyle(fontSize: 20, color: Colors.blue),
          )
        ]),
      ),
      Slider(
        min: 0.1,
        max: 10.0,
        divisions: 101,
        value: threshold,
        onChanged: onThresholdChange,
        label: threshold.toStringAsFixed(1),
      ),
    ]);
  }
}
