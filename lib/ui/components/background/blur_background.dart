import 'dart:ui';

import 'package:flutter/material.dart';

class BlurBackground extends StatelessWidget {
  final double? height;
  final double? radiusCorner;
  final double? paddingHorizontal;
  final double? width;
  final double? sigmaX;
  final double? sigmaY;
  const BlurBackground({
    super.key,
    this.height,
    this.radiusCorner,
    this.paddingHorizontal,
    this.width,
    this.sigmaX,
    this.sigmaY,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: paddingHorizontal ?? 0),
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radiusCorner ?? 0),
        child: BackdropFilter(
          blendMode: BlendMode.src,
          filter: ImageFilter.blur(
            sigmaX: sigmaX ?? 8,
            sigmaY: sigmaX ?? 8,
          ),
          child: const SizedBox.expand(),
        ),
      ),
    );
  }
}
