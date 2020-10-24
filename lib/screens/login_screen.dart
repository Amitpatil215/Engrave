import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'login-screen';
  final userController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                child: Image.asset(
                  'assets\images\gknbscat.png',
                  fit: BoxFit.cover,
                ),
              ),
              Card(
                elevation: 6,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          HomeScreen();
                        },
                        child: Text('Login'),
                        textColor: Colors.purple,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
