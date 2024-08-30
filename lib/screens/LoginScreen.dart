import 'package:flutter/material.dart';
import 'package:flutter_tes/AuthScreen/RegisterForm.dart';
import 'package:flutter_tes/screens/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomeScreen()), // Replace LoginScreen with your login screen widget
                  (Route<dynamic> route) =>
                      false, // This removes all the previous routes
                );
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Handle forgot password
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registerform()),
                );
              },
              child: Text('Click here to Sign Up!!!'),
            ),
            TextButton(
              onPressed: () {
                // Handle forgot password
              },
              child: Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}
