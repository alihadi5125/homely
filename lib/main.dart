import 'package:flutter/material.dart';
import 'package:homely/responsive/size_config.dart';

import 'package:homely/screens/splashscreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              title: 'Learning Platform Application',

              home: AnimatedSplashScreen(
              animationDuration:Duration(
                seconds: 2
              ) ,

                splash: 'images/house.png',
                nextScreen: SplashScreen(),
                splashTransition: SplashTransition.rotationTransition,

              ),
            );
          },
        );
      },
    );
  }
}



/*
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: SizeConfig.safeBlockVertical * 100,
            width: SizeConfig.safeBlockHorizontal * 100,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

*/


