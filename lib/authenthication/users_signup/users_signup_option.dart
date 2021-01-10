import 'package:flutter/material.dart';
import 'package:homely/authenthication/signup.dart';
import 'package:homely/responsive/size_config.dart';
import 'package:homely/screens/splashscreen.dart';
import 'package:page_transition/page_transition.dart';

class UsersOptionSignUp extends StatefulWidget {
  @override
  _UsersOptionSignUpState createState() => _UsersOptionSignUpState();
}

class _UsersOptionSignUpState extends State<UsersOptionSignUp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
                title: 'Learning Platform Application',
                home: SafeArea(
                  child: Scaffold(
                    body: Container(
                      width: SizeConfig.widthMultiplier*200,
                      height: SizeConfig.heightMultiplier*80,
                      //color: Colors.red,

                      child: Column(
                        children: [

                          Expanded(
                            flex: 1,
                            child: Container(
                              //color: Colors.yellow,

                              child: Padding(
                                padding: EdgeInsets.only(left: SizeConfig.widthMultiplier*8, top: SizeConfig.isMobilePortrait?SizeConfig.heightMultiplier*6:SizeConfig.heightMultiplier*2),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(seconds: 1), child: SplashScreen()));
                                          },
                                          child: Icon(
                                            Icons.arrow_back,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),



                                    Expanded(
                                      flex:4,
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text("Choose a User you", style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Montserrat',
                                            fontWeight:FontWeight.bold,
                                            fontSize: SizeConfig.textMultiplier*2.6
                                        ),),
                                      ),
                                    ),


                                    Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("want to be !", style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Montserrat',
                                            fontWeight:FontWeight.bold,
                                            fontSize: SizeConfig.textMultiplier*2.6
                                        ),),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                            ),


                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              //color: Colors.orange,
                              child:
                              Padding(
                                padding: EdgeInsets.only(left: SizeConfig.isMobilePortrait?0:SizeConfig.widthMultiplier*3,
                                  right: SizeConfig.isMobilePortrait?0:SizeConfig.widthMultiplier*3,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(child: GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(seconds: 1), child: SignUpScreen()));
                                        },
                                        child: Image.asset("images/owner.png"))),

                                    Expanded(child: GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(seconds: 1), child: SignUpScreen()));
                                        },
                                        child: Image.asset("images/tenat.png"))),
                                  ],
                                ),
                              ),

                            ),


                          )
                        ],
                      ),
                    ),
                  ),
                ));
          },
        );
      },
    );;
  }
}
