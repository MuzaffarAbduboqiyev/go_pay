import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract mixin class SvgImageWidget {
  Widget svgImageWidget({
    required String imageName,
    double? imageWidth,
    double? imageHeight,
    BoxFit? boxFitType,
    bool? isCircle,
  }) =>
      SvgImageItem(
        imageName: imageName,
        imageWidth: imageWidth,
        imageHeight: imageHeight,
        boxFitType: boxFitType,
        isCircle: isCircle,
      );
}

class SvgImageItem extends StatelessWidget {
  final String imageName;
  final double? imageWidth;
  final double? imageHeight;
  final BoxFit? boxFitType;
  final bool? isCircle;

  const SvgImageItem({
    required this.imageName,
    this.imageWidth,
    this.imageHeight,
    this.boxFitType,
    this.isCircle = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: isCircle ?? false
          ? const BorderRadius.all(
              Radius.circular(50),
            )
          : BorderRadius.zero,
      child: SvgPicture.asset(
        "assets/images/$imageName.svg",
        width: imageWidth,
        height: imageHeight,
        fit: boxFitType ?? BoxFit.contain,
      ),
    );
  }
}
