import 'package:engrave/provider/auth_provider.dart';
import 'package:engrave/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import './screens/mainScreen.dart';

import 'package:provider/provider.dart';

import './main_properties/theme.dart';
import './main_properties/routs.dart';
import './main_properties/provider_list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: providerList,
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: theme,

            /// For debug purpose add your screen Widget here and define it in route table
            /// make sure to comment out your changes once you ready to send a PR.
            home: Consumer<Auth>(
              builder: (ctx, authObject, child) => MaterialApp(
                theme: ThemeData(
                  primarySwatch: Colors.purple,
                  accentColor: Colors.deepOrange,
                  fontFamily: 'GoogleSans',
                ),
                home: authObject.isAuthenticated
                    ? HomeScreen()
                    // if not authenticated i wanna try loging in automatically
                    // so using future till that time i will show progress indicator
                    : FutureBuilder(
                        // trying auto login
                        // if we logged in successfully then auth rebuilds due to notifyListeners()
                        // and our build reruns and we end up in product overview screen
                        future: authObject.tryAutoLogin(),
                        builder: (context, snapshot) {
                          ScreenUtil.init(
                            context,
                            designSize: (MediaQuery.of(context).size),
                          );
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            // if we are unable to log in then show authentication screen
                            return MainScreen();
                          }
                        },
                      ),
                routes: routeTable,
              ),
            )));
  }
}
