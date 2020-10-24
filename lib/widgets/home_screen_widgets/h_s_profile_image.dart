import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HSProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: SvgPicture.asset('assets/images/profile.svg'),
    );
  }
}
