import 'package:flutter/material.dart';
import 'package:tunning_app/models/tune_model.dart';

import '../components/list_item_view.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<TuneModel>tunes = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.purple,sound: 'note2.wav',),
    TuneModel(color: Colors.cyan,sound: 'note3.wav',),
    TuneModel(color: Colors.green,sound: 'note4.wav',),
    TuneModel(color: Colors.grey,sound: 'note5.wav',),
    TuneModel(color: Colors.orange,sound: 'note6.wav',),
    TuneModel(color: Colors.brown,sound: 'note7.wav',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Tune'),centerTitle: true,backgroundColor: Colors.blueGrey,foregroundColor: Colors.white,),
      body: Column(
        children: tunes.map((tune) {
      return ListItemView(tune: tune); // Use ListItemView for each tune
      }).toList(),
      ),
    );
  }
}
