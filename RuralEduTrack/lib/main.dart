import 'package:flutter/material.dart';
 3.17
import 'package:firebase_core/firebase_core.dart';

// Import your screens
import 'screens/responsive_layout.dart';
import 'screens/login_screen.dart';
import 'screens/responsive_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // 👇 Default screen (for your assignment)
      home: const ResponsiveLayout(),

      // Optional: Navigation setup (use later if needed)
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => ResponsiveHome(),
        '/layout': (context) => const ResponsiveLayout(),
=======
import 'screens/home_screen.dart';
import 'screens/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/',

      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
main
      },
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScrollableViews(),
      debugShowCheckedModeBanner: false,
    );
  }
}