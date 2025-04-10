import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSVGImage extends StatelessWidget {
  const AppSVGImage(
      {super.key,
        required this.image,
        this.boxFit,
        this.height,
        this.width,
        this.color,this.colorMode});

  final String image;
  final BoxFit? boxFit;
  final double? height;
  final double? width;
  final Color? color;
  final BlendMode? colorMode;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      height: height,
      width: width,
      fit: boxFit ?? BoxFit.contain,
      colorFilter: color != null
          ? ColorFilter.mode(
        color!,
        colorMode??
            BlendMode.srcIn,
      )
          : null,
    );
  }
}