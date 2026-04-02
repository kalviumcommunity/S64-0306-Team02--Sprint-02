import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management Demo'),
      ),
      body: Container(
        width: double.infinity,
        color: _counter >= 5 ? Colors.greenAccent : Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                'Button pressed:',
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 10),

              Text(
                '$_counter times',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    child: Text('Increment'),
                  ),

                  SizedBox(width: 10),

                  ElevatedButton(
                    onPressed: _decrementCounter,
                    child: Text('Decrement'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}