import 'package:flutter/material.dart';
import 'package:homely/homescreen/HomeScreen.dart';
import 'package:homely/responsive/size_config.dart';
import 'package:page_transition/page_transition.dart';

class addPayment extends StatefulWidget {
 String userType;
 addPayment(this.userType);

  @override
  _addPaymentState createState() => _addPaymentState();
}

class _addPaymentState extends State<addPayment> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff053F5E),
        body: Container(
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.widthMultiplier * 7),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(seconds: 1), child: HomeMainScreen(widget.userType)));
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
              Expanded(
                flex: 10,
                child: Container(
                  width: SizeConfig.heightMultiplier * 200,
                  height: SizeConfig.heightMultiplier * 100,
                  decoration: BoxDecoration(
                    color: Color(0xffF6F6F6),
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                    ),
                  ),

                  child: Padding(
                  padding:  EdgeInsets.only(left: SizeConfig.widthMultiplier * 7, right: SizeConfig.widthMultiplier * 7,top:  SizeConfig.heightMultiplier*2),
                    child: Column(


                      children: [

                        Expanded(

                          child:
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("Add Payment", style: TextStyle(
                              color: Colors.black,
                              fontSize:SizeConfig.textMultiplier*4,
                              fontWeight: FontWeight.bold,
                              fontFamily:'Montserrat',
                            ),),
                          ),
                        ),
                        Expanded(

                          child:
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text("Details", style: TextStyle(
                              color: Colors.black,
                              fontSize:SizeConfig.textMultiplier*4,
                              fontWeight: FontWeight.bold,
                              fontFamily:'Montserrat',
                            ),),
                          ),
                        ),
                        Expanded(

                          child:
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("Add Account Information", style: TextStyle(
                              color: Colors.black,
                              fontSize:SizeConfig.textMultiplier*3,
                              fontWeight: FontWeight.bold,

                              fontFamily:'Montserrat',
                            ),),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child:
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text("for rent Deposit", style: TextStyle(
                              color: Colors.black,
                              fontSize:SizeConfig.textMultiplier*3,
                              fontWeight: FontWeight.bold,

                              fontFamily:'Montserrat',
                            ),),
                          ),
                        ),


                        Expanded(
                          flex:8,

                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(


                                child: Padding(
                                  padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier*2),
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      textField("BENEFICIARY NAME"),
                                      SizedBox(
                                        height: 10,
                                      ),

                                      textField("BANK CODE "),

                                      SizedBox(
                                        height: 10,
                                      ),

                                      textField("TRANSIT NUMBER"),

                                      SizedBox(
                                        height: 10,
                                      ),

                                      textField("ACCOUNT NUMBER"),
                                      SizedBox(
                                        height: 10,
                                      ),

                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.end,
                                       children: [

                                         Container(
                                           height: SizeConfig.heightMultiplier*6,
                                           width: 103.00,
                                           decoration: BoxDecoration(
                                             color: Color(0xff115173),borderRadius: BorderRadius.circular(8.00),
                                           ),
                                           child: RaisedButton(
                                           shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(8.00)
                                           ),
                                             child:
                                             Text("Save",
                                               style: TextStyle(
                                                 color: Colors.white,
                                                 fontSize: SizeConfig.textMultiplier*2,
                                                 fontFamily: "Roboto"
                                               ),
                                             ),
                                             onPressed: (){

                                             },
                                             color:  Color(0xff115173),
                                           ),
                                         )
                                       ],
                                     )
                                    ],
                                  ),
                                ),

                        ),
                            )

                        )



                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget textField(String text){
    return TextField(
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
            labelText: text, labelStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          color: Color(0xFFBCBCBC),
        )
        )
    );
  }
}
