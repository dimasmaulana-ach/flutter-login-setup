import 'package:flutter/material.dart';

heightResponsive (BuildContext context, double heightRatio) {
  double screenHeight = MediaQuery.of(context).size.height;
  double responsiveHeight = screenHeight * (heightRatio/100);
  return responsiveHeight;
}

widthResponsive (BuildContext context, double widthRatio){
  double screenWidth = MediaQuery.of(context).size.width;
  double responsiveWidth = screenWidth * (widthRatio/100);
  return responsiveWidth;
}

double fontResponsive (BuildContext context, double fontRatio){
  double fontSize = MediaQuery.of(context).size.width;
  double responsiveFont = fontSize * (fontRatio/100);
  return responsiveFont;
}