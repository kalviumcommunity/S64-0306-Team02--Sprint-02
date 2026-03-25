import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: 'Password')),
            ElevatedButton(
              onPressed: () async {
                var user = await authService.login(
                  emailController.text,
                  passwordController.text,
                );
                if (user != null) {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen(user.uid)));
                }
              },
              child: Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}