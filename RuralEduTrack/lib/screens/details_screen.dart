import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Screen')),
      body: Center(
        child: CustomButton(
          label: 'Back',
          color: Colors.orange,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}