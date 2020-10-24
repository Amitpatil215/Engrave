import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './screens/mainScreen.dart';
import './main_properties/theme.dart';
import './main_properties/routs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,

      /// For debug purpose add your screen Widget here and define it in route table
      /// make sure to comment out your changes once you ready to send a PR.
      // home: StreamBuilder(
      //   builder: (context, snapshot) {
      //     ScreenUtil.init(
      //       context,
      //       designSize: (MediaQuery.of(context).size),
      //     );
      // return
      home: MainScreen(),
//         },
//       ),
      routes: routeTable,
    );
  }
}
