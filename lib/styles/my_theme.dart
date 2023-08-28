import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class MyTheme{
 static ThemeData lihgtTheme = ThemeData(
    scaffoldBackgroundColor: kPrimarycolor,
   appBarTheme: AppBarTheme(
     backgroundColor: Colors.transparent,
     elevation: 0,

   )

  );

}