import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/registerpage.dart';
// Replace with your actual HomePage import
// Replace with your actual RegisterPage import

class LoginPage extends StatelessWidget {
  // Mocking a simple check for whether the user is registered (you can replace it with real logic).
  bool isUserRegistered() {
    // In a real app, this should check Firebase or local storage.
    // For now, it's mocked as true (indicating the user is already registered).
    return true; // Change to false to simulate an unregistered user.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App logo

            ClipOval(
              child: Image.asset(
                'assets/images/logo.jpg', // Replace with your image path
                width: 150,
                height: 150,
                fit:
                    BoxFit.cover, // Ensure the image fits inside the oval shape
              ),
            ),
            SizedBox(height: 20),
            // Username TextField
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Password TextField
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Forgot Password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Implement forgot password functionality
                },
                child: Text('Forgot Password?'),
              ),
            ),
            SizedBox(height: 20),
            // Login Button
            ElevatedButton(
              onPressed: () {
                if (isUserRegistered()) {
                  // If the user is registered, navigate to the HomePage
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen()), // Go to HomePage
                  );
                } else {
                  // If the user is not registered, navigate to RegisterPage
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RegisterPage()), // Go to RegisterPage
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                backgroundColor: Colors.green[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('LOGIN'),
            ),
            SizedBox(height: 10),
            // Register Option
            TextButton(
              onPressed: () {
                // Navigate to RegisterPage directly if needed
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text("Don't have an account? Register Now"),
            ),
          ],
        ),
      ),
    );
  }
}
