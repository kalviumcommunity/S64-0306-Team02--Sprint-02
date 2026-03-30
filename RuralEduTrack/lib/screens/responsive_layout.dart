import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool isLargeScreen = screenWidth > 600;

    return Scaffold(
      appBar: AppBar(title: const Text("Responsive Layout")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "Header Section",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Body (Responsive)
            Expanded(
              child: isLargeScreen
                  ? Row(
                      children: [
                        Expanded(child: leftPanel()),
                        const SizedBox(width: 10),
                        Expanded(child: rightPanel()),
                      ],
                    )
                  : Column(
                      children: [
                        Expanded(child: leftPanel()),
                        const SizedBox(height: 10),
                        Expanded(child: rightPanel()),
                      ],
                    ),
            ),

            const SizedBox(height: 10),

            // Footer
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "Footer Section",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Left Panel
  Widget leftPanel() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          "Left Panel",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  // Right Panel
  Widget rightPanel() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          "Right Panel",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}