import 'package:engrave/provider/auth_provider.dart';
import 'package:engrave/provider/firestore_image_upload.dart';
import 'package:engrave/provider/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providerList = [
  ChangeNotifierProvider(
    create: (context) => Auth(),
  ),
  ChangeNotifierProvider(
    create: (context) => UserProvider(),
  ),
  ChangeNotifierProvider(
    create: (context) => FirestoreImageUpload(),
  ),
];
