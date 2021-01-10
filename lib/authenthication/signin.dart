
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homely/authenthication/signup.dart';
import 'package:homely/responsive/size_config.dart';
import 'package:homely/authenthication/users_signup/users_signup_option.dart';
import 'package:homely/users_signin/users_sigin_option.dart';
import 'package:page_transition/page_transition.dart';
class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                    body: Center(
                      child: Container(
                       // color: Colors.orange,
                        width: SizeConfig.widthMultiplier * 200,
                        height: SizeConfig.heightMultiplier * 65,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left:SizeConfig.isMobilePortrait?SizeConfig.widthMultiplier*8:SizeConfig.widthMultiplier*15,
                            right: SizeConfig.isMobilePortrait?SizeConfig.widthMultiplier*8:SizeConfig.widthMultiplier*15,
                          ),
                          child: ListView(
                            shrinkWrap: true,
                            children: [


                              Padding(
                                padding: EdgeInsets.only(top: SizeConfig.heightMultiplier*3),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text("Sign In", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: SizeConfig.imageSizeMultiplier*9,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Montserrat',
                                  ),),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.heightMultiplier*5,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: SizeConfig.widthMultiplier*200,
                                  height: SizeConfig.heightMultiplier*8,
                                  child: TextField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color:   Color(0xFF115173), width: 3.0),
                                          ),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFC4C4C4),

                                            )
                                          ),
                                        labelText: "EMAIL", labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFBCBCBC),
                                      )
                                      )
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: SizeConfig.heightMultiplier*3,
                              ),



                              /// password
                              Container(
                                width: SizeConfig.widthMultiplier*200,
                                height: SizeConfig.heightMultiplier*8,
                                child: TextField(
                                    decoration: InputDecoration(


                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:   Color(0xFF115173), width: 3.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFC4C4C4),

                                            )
                                        ),
                                        labelText: "PASSWORD", labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                      color: Color(0xFFBCBCBC),
                                    )
                                    )
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.heightMultiplier*3,
                              ),


                              Container(
                                child: Container(
                                  width: SizeConfig.widthMultiplier*200,
                                  height: SizeConfig.heightMultiplier*7,

                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.all(Radius.circular(10)),

                                  ),
                                  child: RaisedButton(
                                    color: Color(0xFF115173),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Text(
                                      "SIGN IN",
                                      style: TextStyle(
                                        fontFamily:'Montserrat',
                                        fontSize:SizeConfig.textMultiplier*2.5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    onPressed: (){

                                      Navigator.push(context, PageTransition(type: PageTransitionType., duration: Duration(seconds: 1), child: UsersOptionSignIn()));

                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.heightMultiplier*3,
                              ),


                              Align(
                                alignment: Alignment.topCenter,
                                child: Text("Forgot Password?", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: SizeConfig.textMultiplier*2.5,
                                    fontFamily:'Montserrat',


                                ),),
                              ),

                              SizedBox(
                                height: SizeConfig.heightMultiplier*6,
                              ),



                              Container(
                                width: SizeConfig.widthMultiplier*200,
                                height: SizeConfig.heightMultiplier*.5,
                                color: Color(0xFF707070),
                              ),
                              SizedBox(
                                height: SizeConfig.heightMultiplier*5,
                              ),







                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier*1),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Doesn't have account ? ", style: TextStyle(
                                        color:Colors.black,
                                          fontFamily:'Montserrat',
                                        fontSize: SizeConfig.textMultiplier*2.5,

                                        ),),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(seconds: 1), child: UsersOptionSignUp()));
                                          },
                                          child: Text("Signup", style: TextStyle(
                                          color: Color(0xFF115173),
                                              fontFamily:'Montserrat',
                                          fontSize: SizeConfig.textMultiplier*2.5,
                                          fontWeight: FontWeight.bold
                                          ),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )


                            ],
                          ),
                        )
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
