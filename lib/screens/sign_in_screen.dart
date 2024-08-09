import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/create_ride_screen.dart';
import 'package:flutter_application_1/screens/ride_list_screen.dart';
import 'package:flutter_application_1/screens/sign_up_screen.dart';


class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isDriver = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', height: 100),
              SizedBox(height: 20),
              Text(
                'Sign In',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ToggleButtons(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20), child: Text('Driver')),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20), child: Text('Passenger')),
                ],
                isSelected: [isDriver, !isDriver],
                onPressed: (index) {
                  setState(() {
                    isDriver = index == 0;
                  });
                },
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Sign in logic
                  if (isDriver) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateRideScreen()),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RideListScreen()),
                    );
                  }

                },
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Forgot password logic
                },
                child: Text('Forgot password?'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                },
                child: Text('Are You New User? Register here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
