import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String imgString;
  final double width;
  final double height;
  final double radius;
  final BoxFit fit;

  const CustomCircleAvatar({
    Key? key,
    required this.imgString,
    required this.width,
    required this.height,
    required this.radius,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Image.asset(
        imgString,
        width: width,
        height: height,
        fit: fit,
      ),
      radius: radius,
    );
  }
}
