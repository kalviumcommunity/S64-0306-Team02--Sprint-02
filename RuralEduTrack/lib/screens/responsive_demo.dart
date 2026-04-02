import 'package:flutter/material.dart';

class ResponsiveDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 🔹 MediaQuery for screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text('Responsive Design Demo')),

      body: LayoutBuilder(
        builder: (context, constraints) {

          // 🔹 Mobile Layout
          if (constraints.maxWidth < 600) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.15,
                  margin: EdgeInsets.all(10),
                  color: Colors.tealAccent,
                  child: Center(
                    child: Text(
                      'Mobile View',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            );
          }

          // 🔹 Tablet Layout
          else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 250,
                  height: 150,
                  color: Colors.orangeAccent,
                  child: Center(
                    child: Text(
                      'Tablet Left Panel',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  height: 150,
                  color: Colors.tealAccent,
                  child: Center(
                    child: Text(
                      'Tablet Right Panel',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}