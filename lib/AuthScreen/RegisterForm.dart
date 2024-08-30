import 'package:flutter/material.dart';
import 'package:flutter_tes/screens/LoginScreen.dart';

class Registerform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
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
            TextFormField(
              decoration: InputDecoration(labelText: 'Phone'),
              obscureText: true,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Address'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          LoginScreen()), // Replace LoginScreen with your login screen widget
                  (Route<dynamic> route) =>
                      false, // This removes all the previous routes
                );
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
