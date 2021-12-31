import 'package:flutter/material.dart';

import 'conf/app_config.dart';

class SplashScreenWhite extends StatelessWidget {
  const SplashScreenWhite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaqueryheight = MediaQuery.of(context).size.height;
    var mediaquerywidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
          child: Container(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage("assets/images/luxury-bedroom-with-bed.jpg"))),
                ),
                Positioned.fill(
                  child: Align(
                      alignment: Alignment.center,
                      child:
                      Container(
                        height: double.infinity,
                        color: Colors.white60,
                        child:  SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: mediaqueryheight / 18,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.asset("assets/images/hzcyan.png"),
                                ),
                                SizedBox(
                                  height: mediaqueryheight / 20,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text("Book your Hotel!",
                                      style: TextStyle(
                                          fontFamily: "Rubik",
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 34)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text("Easier. Faster.",
                                      style: TextStyle(
                                          fontFamily: "Rubik",
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 34)),
                                ),  Container(
                                  alignment: Alignment.center,
                                  child: Text("Cheaper",
                                      style: TextStyle(
                                          fontFamily: "Rubik",
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 34)),
                                ),
                                SizedBox(
                                  height: mediaqueryheight / 10,
                                ),


                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 0),
                                  height: 60,
                                  width: double.infinity,
                                  child: RaisedButton(
                                      color: kRedPrimaryColor,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.login_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Log in to your account",
                                            style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {}),
                                ),

                                SizedBox(
                                  height: mediaqueryheight / 30,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 0),
                                  height: 60,
                                  width: double.infinity,
                                  child: RaisedButton(
                                      color: kPrimaryColor,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.person_pin,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Create an account",
                                            style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {}),
                                ),

                                SizedBox(
                                  height: mediaqueryheight / 30,
                                ),
                                Row(

                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(child:Container(
                                      child: Text("Skip and checkout as guest",
                                          style: TextStyle(
                                              fontFamily: "Rubik",
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16,
                                              decoration: TextDecoration.underline
                                          )),
                                    ) ,onTap: (){

                                    },)

                                  ],
                                )

                              ],
                            ),
                          ),
                        ),
                      )

                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
