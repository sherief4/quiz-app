import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:quiz_app/core/extenstions/ui_extenstion.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:shimmer/shimmer.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.url,
    this.child,
    this.width,
    this.height,
    this.memCacheHeight,
    this.maxWidthDiskCache,
    this.maxHeightDiskCache,
    this.memCacheWidth,
    required this.radius,
    this.shape,
    this.borderRadius,
    this.fit,
  });

  final String url;
  final double? width;
  final double? height;
  final int? memCacheHeight;
  final int? maxWidthDiskCache;
  final int? maxHeightDiskCache;
  final int? memCacheWidth;
  final double radius;
  final BorderRadius? borderRadius;
  final BoxShape? shape;
  final BoxFit? fit;
  final Widget Function(ImageProvider)? child;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: BoxFit.cover,
      memCacheWidth: memCacheWidth,
      memCacheHeight: memCacheHeight,
      maxWidthDiskCache: maxWidthDiskCache,
      maxHeightDiskCache: maxHeightDiskCache,
      placeholder:
          (_, __) => Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(width: width, height: height, color: Colors.white),
          ),
      errorWidget: (_, url, ___) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: shape == null ? borderRadius ?? radius.br : null,
            shape: shape ?? BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage(Assets.icons.logo.path),
              fit: fit ?? BoxFit.contain,
            ),
          ),
        );
      },
      imageBuilder:
          child != null
              ? (_, image) => child!.call(image)
              : (_, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius:
                      shape == null ? borderRadius ?? radius.br : null,
                  shape: shape ?? BoxShape.rectangle,

                  image: DecorationImage(
                    image: imageProvider,
                    fit: fit ?? BoxFit.cover,
                  ),
                ),
              ),
    );
  }
}
