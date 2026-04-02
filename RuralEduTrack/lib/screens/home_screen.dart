import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styled App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Flutter',
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            SizedBox(height: 20),

            Text(
              'This app uses a consistent theme.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {},
              child: Text('Get Started'),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/info_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
        children: [

          InfoCard(
            title: 'Profile',
            subtitle: 'View your account',
            icon: Icons.person,
          ),

          InfoCard(
            title: 'Settings',
            subtitle: 'App preferences',
            icon: Icons.settings,
          ),

          SizedBox(height: 20),

          CustomButton(
            label: 'Go to Details',
            onPressed: () {
              Navigator.pushNamed(context, '/details');
            },
          ),
        ],
      ),
    );
  }
}