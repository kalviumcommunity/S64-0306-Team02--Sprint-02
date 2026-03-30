import 'package:flutter/material.dart';

class StatelessStatefulDemo extends StatelessWidget {
  const StatelessStatefulDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless vs Stateful Demo"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Stateless Widget
          HeaderWidget(),

          SizedBox(height: 30),

          // Stateful Widget
          Expanded(child: CounterWidget()),
        ],
      ),
    );
  }
}

// ----------------------
// Stateless Widget
// ----------------------
class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Interactive Demo App",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// ----------------------
// Stateful Widget
// ----------------------
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;
  Color bgColor = Colors.white;

  void increment() {
    setState(() {
      count++;
      bgColor = count % 2 == 0 ? Colors.blue.shade100 : Colors.green.shade100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Count: $count",
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: increment,
            child: const Text("Increase"),
          ),
        ],
      ),
    );
  }
}