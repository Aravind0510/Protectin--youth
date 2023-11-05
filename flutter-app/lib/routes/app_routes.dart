import 'package:flutter/material.dart';
import 'package:safetycompass/presentation/iphone_13_14_one_screen/iphone_13_14_one_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_two_screen/iphone_13_14_two_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_three_screen/iphone_13_14_three_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_four_screen/iphone_13_14_four_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_seven_screen/iphone_13_14_seven_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_eight_screen/iphone_13_14_eight_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_nine_screen/iphone_13_14_nine_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_ten_screen/iphone_13_14_ten_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_eleven_screen/iphone_13_14_eleven_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_sixteen_screen/iphone_13_14_sixteen_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_twelve_container1_screen/iphone_13_14_twelve_container1_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_fifteen_screen/iphone_13_14_fifteen_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_seventeen_screen/iphone_13_14_seventeen_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_thirteen_screen/iphone_13_14_thirteen_screen.dart';
import 'package:safetycompass/presentation/iphone_13_14_fourteen_screen/iphone_13_14_fourteen_screen.dart';
import 'package:safetycompass/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone1314OneScreen = '/iphone_13_14_one_screen';

  static const String iphone1314TwoScreen = '/iphone_13_14_two_screen';

  static const String iphone1314ThreeScreen = '/iphone_13_14_three_screen';

  static const String iphone1314FourScreen = '/iphone_13_14_four_screen';

  static const String iphone1314SevenScreen = '/iphone_13_14_seven_screen';

  static const String iphone1314EightScreen = '/iphone_13_14_eight_screen';

  static const String iphone1314NineScreen = '/iphone_13_14_nine_screen';

  static const String iphone1314TenScreen = '/iphone_13_14_ten_screen';

  static const String iphone1314ElevenScreen = '/iphone_13_14_eleven_screen';

  static const String iphone1314SixteenScreen = '/iphone_13_14_sixteen_screen';

  static const String iphone1314TwelveContainerPage =
      '/iphone_13_14_twelve_container_page';

  static const String iphone1314TwelveContainer1Screen =
      '/iphone_13_14_twelve_container1_screen';

  static const String iphone1314FifteenScreen = '/iphone_13_14_fifteen_screen';

  static const String iphone1314SeventeenScreen =
      '/iphone_13_14_seventeen_screen';

  static const String iphone1314ThirteenScreen =
      '/iphone_13_14_thirteen_screen';

  static const String iphone1314FourteenScreen =
      '/iphone_13_14_fourteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone1314OneScreen: (context) => Iphone1314OneScreen(),
    iphone1314TwoScreen: (context) => Iphone1314TwoScreen(),
    iphone1314ThreeScreen: (context) => Iphone1314ThreeScreen(),
    iphone1314FourScreen: (context) => Iphone1314FourScreen(),
    iphone1314SevenScreen: (context) => Iphone1314SevenScreen(),
    iphone1314EightScreen: (context) => Iphone1314EightScreen(),
    iphone1314NineScreen: (context) => Iphone1314NineScreen(),
    iphone1314TenScreen: (context) => Iphone1314TenScreen(),
    iphone1314ElevenScreen: (context) => Iphone1314ElevenScreen(),
    iphone1314SixteenScreen: (context) => Iphone1314SixteenScreen(),
    iphone1314TwelveContainer1Screen: (context) =>
        Iphone1314TwelveContainer1Screen(),
    iphone1314FifteenScreen: (context) => Iphone1314FifteenScreen(),
    iphone1314SeventeenScreen: (context) => Iphone1314SeventeenScreen(),
    iphone1314ThirteenScreen: (context) => Iphone1314ThirteenScreen(),
    iphone1314FourteenScreen: (context) => Iphone1314FourteenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
