import 'package:flutter/material.dart';
import '../widgets/counter_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo')),
      body: CounterWidget(),
    );
  }
}