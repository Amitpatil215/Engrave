import 'package:engrave/provider/auth_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CreateScreen extends StatefulWidget {
  static const routeName = 'Signup';

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  final emailController = TextEditingController();
  bool _isLoading = false;

  void onSaved(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });
    if (usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        emailController.text.isNotEmpty) {
      print("username ${usernameController.text}");
      print("pass ${passwordController.text}");
      print("email ${emailController.text}");

      await Provider.of<Auth>(context, listen: false).signUP(
          email: emailController.text,
          password: passwordController.text,
          username: usernameController.text);
    } else {}
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" SignUp"),
        backgroundColor: Colors.blueGrey,
      ),
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
            Container(
              margin: EdgeInsets.all(10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 4,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          prefixIcon: Icon(Icons.account_circle),
                        ),
                        controller: usernameController,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.lock),
                        ),
                        controller: emailController,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                        ),
                        controller: passwordController,
                      ),
                      _isLoading
                          ? CircularProgressIndicator()
                          : RaisedButton(
                              color: Theme.of(context).primaryColor,
                              onPressed: () {
                                onSaved(context);
                              },
                              child: Text('Signup'),
                              textColor: Colors.purple,
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
