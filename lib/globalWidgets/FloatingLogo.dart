import 'package:flutter/material.dart';

class FloatingLogo extends StatelessWidget {
  const FloatingLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 9,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ]
      ),
      width: 90,
      height: 90,
      padding: const EdgeInsets.all(13),
      child: Image.asset("assets/images/logo.png"),
    );
  }
}
