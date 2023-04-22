import 'package:design/utils/dimensions.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static const mainColor = Colors.indigo;
  static const secondaryColor = Color.fromARGB(226, 243, 243, 243);
  static const  primaryColor = Color.fromARGB(255, 2, 69, 75);
  static const  darkColor = Color.fromARGB(255, 178, 219, 231);
  static const  recentColor = Color.fromARGB(255, 224, 234, 238);
 


  //font Theme
  static  TextStyle headText = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: Dimenssions.screenHeight/30.46,
    letterSpacing: 0.27,
    color: secondaryColor,
  );
  static  TextStyle bodyText = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: Dimenssions.screenHeight/36.46,
    letterSpacing: 0.27,
    color: primaryColor,
  );
  static  TextStyle favoriteText = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: Dimenssions.screenHeight/41.46,
    letterSpacing: 1.01,
    color: primaryColor,
  );

  static  TextStyle normalText = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: Dimenssions.screenHeight/60.2,
    letterSpacing: 1.01,
    color: primaryColor,
  );

  
}



