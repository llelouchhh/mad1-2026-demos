import 'package:flutter/material.dart';
import 'package:mad1_login/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var hidePassword = true;
  var emailCtrl = TextEditingController();

  void login() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomeScreen(email: emailCtrl.text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: .center,
            children: [
              Image.asset('images/psulogo.png', scale: 0.5, width: 200),
              SizedBox(height: 20),
              TextField(
                controller: emailCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Email Address'),
                  // icon: Icon(Icons.email_outlined),
                  hintText: 'mad@psu.edu.ph',
                  // hint: Icon(Icons.ac_unit),
                  // prefix: Icon(Icons.email),
                  // suffix: Icon(Icons.email),
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
              SizedBox(height: 8),
              TextField(
                obscureText: hidePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Password'),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                    icon: hidePassword
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: login, child: Text('LOGIN')),
            ],
          ),
        ),
      ),
    );
  }
}