

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homely/homescreen/addPaymentButton.dart';
import 'package:homely/responsive/size_config.dart';
import 'package:page_transition/page_transition.dart';


class HomeMainScreen extends StatefulWidget {

  String Usertype=" ";
  HomeMainScreen(this.Usertype);
  @override
  _HomeMainScreenState createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
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
                    backgroundColor: Color(0xff053F5E),
                    body: Column(
                      children: [
                        Expanded(
                          flex: SizeConfig.isMobilePortrait?1:1,
                          child: Container(
                            width: SizeConfig.heightMultiplier*200,
                            height: SizeConfig.heightMultiplier*12,
                          //  color: Colors.red,

                            child: Center(

                              child: Padding(
                                padding: EdgeInsets.only(left: SizeConfig.widthMultiplier*8,right: SizeConfig.widthMultiplier*8),
                                child: Row(

                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 3,
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Image.asset("images/menu.png"))),
                                    Expanded(child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        widget.Usertype,style: TextStyle(
                                          color: Colors.green,
                                          fontSize: SizeConfig.imageSizeMultiplier*5,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    )),

                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Image.asset("images/notification.png"))),


                                    Expanded(
                                      flex: 1,

                                        child: Image.asset("images/dots.png")),

                                  ],

                                ),
                              ),
                            ),

                          ),
                        ),

                        
                        Expanded(
                          flex: 10,
                          child: Container(
                            width: SizeConfig.heightMultiplier*200,
                            height: SizeConfig.heightMultiplier*100,


                            decoration: BoxDecoration(
                              color: Color(0xffF6F6F6),
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0),
                            ),
                            ),

                            child: Padding(
                              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier*7, right: SizeConfig.widthMultiplier*7,),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      width: SizeConfig.widthMultiplier*200,
                                      height: SizeConfig.heightMultiplier*20,
                                      //color: Colors.red,

                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 4,

                                            child: Container(
                                           //   color: Colors.orange,
                                              child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text("Hi, James A.", style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: SizeConfig.textMultiplier*3.5,
                                                  fontFamily: "Roboto",

                                                ),),
                                              ),

                                            ),

                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              //color: Colors.red,
                                              child: Align(
                                                alignment: Alignment.topCenter,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                                  children: [
                                                    Expanded(child: Align(
                                                      alignment: Alignment.bottomLeft,
                                                        child: Text(" Your Properties",style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: SizeConfig.textMultiplier*2.3,
                                                          fontFamily: "Roboto",
                                                          fontWeight: FontWeight.bold

                                                        ),))),
                                                    Expanded(child: Align(
                                                        alignment: Alignment.bottomRight,
                                                        child: Text("See All",style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontFamily: "Roboto",

                                                        ),)))
                                                  ],
                                                ),
                                              ),

                                            ),

                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier*3,
                                  ),
                                  Expanded(
                                    flex: SizeConfig.isMobilePortrait?5:4,
                                    child: Container(
                                      width: SizeConfig.widthMultiplier*200,
                                      height: SizeConfig.heightMultiplier*20,
                                    //  color: Colors.yellow,

                                      child: ListView(
                                        children: [
                                          new Container(
                                            height:SizeConfig.isMobilePortrait?SizeConfig.heightMultiplier*25:SizeConfig.heightMultiplier*50,
                                            width: SizeConfig.widthMultiplier*200,

                                            decoration: BoxDecoration(
                                              color: Color(0xffffffff),
                                              boxShadow: [

                                                BoxShadow(
                                                  offset: Offset(2.00,1.00),

                                                  color: Color(0xff000000).withOpacity(0.12),
                                                  blurRadius: 15,
                                                ),
                                              ], borderRadius: BorderRadius.circular(15.00),
                                            ),

                                            child:SizeConfig.isMobilePortrait?column():row(),
                                          ),
                                          SizedBox(
                                            height: SizeConfig.heightMultiplier*3,
                                          ),

                                         Container(
                                            height: SizeConfig.isMobilePortrait?SizeConfig.heightMultiplier*25:SizeConfig.heightMultiplier*50,
                                            width: SizeConfig.widthMultiplier*200,

                                            decoration: BoxDecoration(
                                              color: Color(0xffffffff),
                                              boxShadow: [
                                                BoxShadow(
                                                  offset: Offset(0.00,10.00),
                                                  color: Color(0xff000000).withOpacity(0.12),
                                                  blurRadius: 15,
                                                ),
                                              ], borderRadius: BorderRadius.circular(15.00),
                                            ),

                                            child: Column(
                                              children: [

                                                Expanded(
                                                    flex:4,
                                                    child: Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(15.00),
                                                          image: DecorationImage(
                                                            image: AssetImage("images/img.png"),
                                                            fit: BoxFit.cover

                                                          )
                                                        ),
                                                        )),

                                                Expanded(
                                                    flex: 1,
                                                    child: Center(child: Text("7114, Street # 13",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.bold,
                                                          fontFamily: 'Roboto'

                                                      ),))),

                                                Expanded(
                                                    flex:1,
                                                    child:
                                                    Padding(
                                                      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier*4, right: SizeConfig.widthMultiplier*4),
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: Text(
                                                              "New York City", style: TextStyle(
                                                                fontWeight: FontWeight.normal
                                                            ),
                                                            ),
                                                          ),

                                                          Expanded(
                                                            child: Align(
                                                              alignment: Alignment.centerRight,
                                                              child: Icon(
                                                                Icons.circle,
                                                                color: Colors.green,
                                                                size: SizeConfig.imageSizeMultiplier*4,
                                                              ),
                                                            ),
                                                          ),

                                                          SizedBox(
                                                            width: SizeConfig.widthMultiplier*2,
                                                          ),

                                                          Expanded(
                                                            child: Align(
                                                              alignment: Alignment.centerLeft,
                                                              child: Text(
                                                                "Leased", style: TextStyle(
                                                                  fontWeight: FontWeight.normal,
                                                                  color: Colors.green
                                                              ),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )

                          ),
                        ),

                        Expanded(flex: SizeConfig.isMobilePortrait?1:1,child: Container(
                          width: SizeConfig.widthMultiplier*200,
                          height: SizeConfig.heightMultiplier*5,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(child: Image.asset("images/houseicon.png")),
                              
                              Expanded(child: GestureDetector(
                                  onTap: (){

                                  },
                                  child: Image.asset("images/addbtn.png"))),

                              
                              Expanded(child: Image.asset("images/botoomdots.png"))
                            ],
                          ),

                        ))
                      ],
                    ),
                  ),

                ));
          },
        );
      },
    );
  }

  Widget column(){
    return  Column(
      children: [

        Expanded(
            flex:4,
            child: GestureDetector(

              onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, duration: Duration(seconds: 1), child: addPayment(widget.Usertype)));
              },
              child: Container(
                //child: Image.asset("images/img.png",),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.00),

                    image: DecorationImage(
                        image: AssetImage ("images/img.png", ),
                        fit: BoxFit.cover
                    )
                ),
              ),
            )
        ),

        Expanded(
            flex: 1,
            child: Center(child: Text("7114, Street # 13",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'

              ),))),

        Expanded(
            flex:1,
            child:
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier*4, right: SizeConfig.widthMultiplier*4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "New York City", style: TextStyle(
                        fontWeight: FontWeight.normal
                    ),
                    ),
                  ),

                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: SizeConfig.imageSizeMultiplier*4,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: SizeConfig.widthMultiplier*2,
                  ),

                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Leased", style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.green
                      ),
                      ),
                    ),
                  ),

                ],
              ),
            ))
      ],
    );
  }

  Widget row(){
    return  Column(
      children: [

        Expanded(
            flex:4,
            child: Container(
              //child: Image.asset("images/img.png",),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15.00),

                  image: DecorationImage(
                      image: AssetImage ("images/img.png", ),
                      fit: BoxFit.cover
                  )
              ),
            )
        ),

        Expanded(
            flex: 1,
            child: Center(child: Text("7114, Street # 13",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'

              ),))),

        Expanded(
            flex:1,
            child:
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier*4, right: SizeConfig.widthMultiplier*4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "New York City", style: TextStyle(
                        fontWeight: FontWeight.normal
                    ),
                    ),
                  ),

                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: SizeConfig.imageSizeMultiplier*4,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: SizeConfig.widthMultiplier*2,
                  ),

                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Leased", style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.green
                      ),
                      ),
                    ),
                  ),

                ],
              ),
            ))
      ],
    );
  }
}

