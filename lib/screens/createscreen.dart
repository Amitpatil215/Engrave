import 'package:engrave/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './login_screen.dart';
// import 'package:email_validator/email_validator.dart';

class CreateScreen extends StatelessWidget {
  static const routeName = 'Signup';
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(" Screen"),
        // ),
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            child: SvgPicture.asset(
              'assets/images/5.svg',
              fit: BoxFit.cover,
            ),
          ),
          Card(
            elevation: 4,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                    controller: usernameController,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    controller: passwordController,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    controller: confirmController,
                  ),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginScreen.routeName);
                    },
                    child: Text('Signup'),
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
