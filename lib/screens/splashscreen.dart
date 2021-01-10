import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homely/authenthication/signin.dart';
import 'package:homely/responsive/size_config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
                title: 'Learning Platform Application',
                home: Scaffold(
                  body: Center(
                    child: Container(
                      width: SizeConfig.widthMultiplier * 200,
                      height: SizeConfig.heightMultiplier * 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                              },
                              child: Container(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top:
                                            SizeConfig.isMobilePortrait ? SizeConfig.heightMultiplier*10 : SizeConfig.heightMultiplier*5),
                                    child: Image.asset(
                                      "images/house.png",
                                      width: SizeConfig.isPortrait
                                          ? SizeConfig.imageSizeMultiplier * 60
                                          : SizeConfig.imageSizeMultiplier * 30,
                                      height: SizeConfig.isPortrait
                                          ? SizeConfig.imageSizeMultiplier * 40
                                          : SizeConfig.imageSizeMultiplier * 60,
                                    )),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Manage your rental",
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier*4,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                          Expanded(
                            child: Text(
                              "Properties",
                              style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier*4,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: SizeConfig.isMobilePortrait
                                  ? SizeConfig.heightMultiplier * .75
                                  : SizeConfig.heightMultiplier * 1,
                              width: SizeConfig.isMobilePortrait
                                  ? SizeConfig.heightMultiplier * 8
                                  : SizeConfig.heightMultiplier * 12,
                              color: Color(0xffB2002D),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: SizeConfig.isMobilePortrait?0:SizeConfig.heightMultiplier*2),
                                child: Text(
                                  "Click the Icon to continue... ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Montserrat',
                                  )
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
          },
        );
      },
    );
  }
}
