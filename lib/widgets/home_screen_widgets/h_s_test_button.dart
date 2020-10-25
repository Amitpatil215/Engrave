import 'package:engrave/provider/auth_provider.dart';
import 'package:engrave/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HSTestButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.one_k,
        color: Colors.black,
      ),
      onPressed: () async {
        print("OK");
        final token = Provider.of<Auth>(context, listen: false).token;

        print(token);

        // for getting all deta
        await Provider.of<UserProvider>(context, listen: false).getAllDeta();

        // for getting user details
        // await Provider.of<UserProvider>(context, listen: false)
        //     .fetchUser(token);

        // await Provider.of<Auth>(context, listen: false).signUP(
        //   email: "testgmial.com",
        //   password: "test123",
        //   username: "test123",
        // );

        // if (await Provider.of<Auth>(context, listen: false).tryAutoLogin()) {
        //   print("Loged in");
        // } else {
        //   await Provider.of<Auth>(context, listen: false).logIn(
        //     email: "testgmial.com",
        //     password: "test123",
        //   );
        // }

        //print(Provider.of<Auth>(context, listen: false).isAuthenticated);

        //await Provider.of<Auth>(context, listen: false).logOut();
      },
    );
  }
}
