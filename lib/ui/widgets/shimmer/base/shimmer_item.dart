import 'package:flutter/material.dart';

class ShimmerItem extends StatelessWidget {
  final double width;
  final double height;

  const ShimmerItem({
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
