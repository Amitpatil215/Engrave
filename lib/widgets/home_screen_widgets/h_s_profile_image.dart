import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../screens/profile_screen.dart';

class HSProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        child: SvgPicture.asset('assets/images/profile.svg'),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(ProfileScreen.routeName);
      },
    );
  }
}
