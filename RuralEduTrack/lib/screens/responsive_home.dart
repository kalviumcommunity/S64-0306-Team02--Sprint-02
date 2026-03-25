import 'package:flutter/material.dart';

class ResponsiveHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isTablet = screenWidth > 600;
    bool isLandscape = screenWidth > screenHeight;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive UI'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              // 🔹 Header Section
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                color: Colors.blue,
                child: Text(
                  'Welcome to Responsive Design',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isTablet ? 28 : 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // 🔹 Main Content
              Expanded(
                child: isTablet || isLandscape
                    ? GridView.count(
                        crossAxisCount: 2,
                        padding: EdgeInsets.all(10),
                        children: List.generate(
                          6,
                          (index) => Card(
                            child: Center(
                              child: Text(
                                'Item ${index + 1}',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) => Card(
                          margin: EdgeInsets.all(8),
                          child: ListTile(
                            title: Text('Item ${index + 1}'),
                          ),
                        ),
                      ),
              ),

              // 🔹 Footer Section
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: isTablet ? 20 : 16),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}