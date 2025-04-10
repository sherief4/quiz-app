import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    this.onTap,
    required this.image,
    this.isDirectional = false,
    this.size,
    this.height,
    this.width,
    this.imageColor,
    this.boxFit,
  });

  final String image;
  final Function()? onTap;
  final bool isDirectional;
  final double? size;
  final double? height;
  final double? width;
  final Color? imageColor;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        image,
        matchTextDirection: isDirectional,
        fit: boxFit ?? BoxFit.fill,
        color: imageColor,
        height: height ?? size ?? 24.r,
        width: width ?? size ?? 24.r,
      ),
    );
  }
}
