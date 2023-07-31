import 'package:flutter/material.dart';
import 'package:mobileapp/src/utils/responsive.dart';

class SpaceWidget extends StatelessWidget {
  final double height;
  final double width;

  SpaceWidget({
    this.height = 2,
    this.width = 2
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: heightResponsive(context, height),
        width: widthResponsive(context, width)
    );
  }
}