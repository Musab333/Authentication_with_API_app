import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageHeaderSignIn extends StatelessWidget {
  const PageHeaderSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.3,
      child: Expanded(
        child: SvgPicture.asset(
          'assets/images/sign_in.svg',
          height: 300,
        ),
      ),
    );
  }
}
