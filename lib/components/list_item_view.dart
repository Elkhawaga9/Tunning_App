import 'package:flutter/material.dart';
import 'package:tunning_app/models/tune_model.dart';
class ListItemView extends StatelessWidget {
  const ListItemView({super.key, required this.tune});
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
      GestureDetector(
        onTap: (){
          tune.playSound();
        },
        child: Container(
          width: double.infinity,
          color: tune.color,
        ),
      ),
    );
  }
}
