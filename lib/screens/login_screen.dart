import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './home_screen.dart';
// import 'package:email_validator/email_validator.dart';
// import '../main_properties/theme.dart';
// import '../main_properties/routs.dart';

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
                child: SvgPicture.asset(
                  'assets/images/4.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Form(
                child: Card(
                  elevation: 4,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                          ),
                          controller: userController,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                          controller: passController,
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(HomeScreen.routeName);
                          },
                          child: Text('Login'),
                          textColor: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
