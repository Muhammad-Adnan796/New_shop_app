import 'package:diagnose/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:rida/screen/home.dart';

// import 'Dashboard.dart';
// import 'diagnose1.dart';

class Slide1Widget extends StatefulWidget {
  @override
  _Slide1WidgetState createState() => _Slide1WidgetState();
}

class _Slide1WidgetState extends State<Slide1Widget> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Figma Flutter Generator Slide1Widget - FRAME

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
              width: width * 0.9,
              height: height * 0.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: const AssetImage(
                        'assets/HD-wallpaper-settings-clock-gear-mechanic.jpg'),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.8),
                      BlendMode.hardLight,
                    )),
                borderRadius: const BorderRadius.only(
                  topLeft:  Radius.circular(10),
                  topRight:  Radius.circular(10),
                  bottomLeft:  Radius.circular(20),
                  bottomRight:  Radius.circular(20),
                ),
              ),
              child: Stack(children: [
                Positioned(
                  top: 80,
                  left: 40,
                  child: Container(
                    width: width * 0.8,
                    height: height * 0.85,
                    decoration: const BoxDecoration(
                      borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight:  Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight:  Radius.circular(5),
                      ),
                      boxShadow: [
                         BoxShadow(
                            color:  Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4)
                      ],
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                const Positioned(
                    top: 370,
                    left: 75,
                    child:  Text(
                      'All Discription like what i need ti access ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color:  Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Advent Pro',
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    )),
                Positioned(
                    top: 80,
                    left: 40,
                    child: Container(
                      width: width * 0.8,
                      height: height * 0.2,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [ Color(0XFF1DBF73), Color(0XFF00ACEE)]),
                        borderRadius: BorderRadius.only(
                            topLeft:  Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft:  Radius.elliptical(200, 40),
                            bottomRight: Radius.elliptical(200, 40)),
                      ),
                    )),
                const Positioned(
                  top: 100,
                  left: 60,
                  child:  Text(
                    'Access',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Roboto',
                        fontSize: 38,
                        decoration: TextDecoration.none,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                ),
                Positioned(
                  top: 580,
                  left: 30,
                  child: Container(
                    width: width * 0.84,
                    height: height * 0.1,
                    decoration: const BoxDecoration(),
                    child: Positioned(
                      top: 100,
                      child: Container(
                        alignment: Alignment.center,
                        margin:
                            const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            alignment: Alignment.center,
                            width: width * 0.84,
                            height: height * 0.1,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:  const Color(0XFF1DBF73),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(0),
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     PageTransition(
                                //         type: PageTransitionType.rightToLeft,
                                //         reverseDuration: Duration(seconds: 1),
                                //         duration: Duration(seconds: 1),
                                //         child: DashBoard()));
                              },
                              child: const Text(
                                "Accept",
                                textAlign: TextAlign.center,
                                style:  TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontFamily: 'Roboto',),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 560,
                    left: 80,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: height * 0.035,
                          width: width * 0.06,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1DBF73),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        const Text(
                          'Agree on terms and conditions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color:  Color.fromRGBO(170, 170, 170, 1),
                              fontFamily: 'Advent Pro',
                              fontSize: 16,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w400,
                              height: 1),
                        ),
                      ],
                    ),),
                const Positioned(
                    top: 135,
                    left: 60,
                    child:  Text(
                      'Your data will on safe hand',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Advent Pro',
                          fontSize: 12,
                          decoration: TextDecoration.none,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1),
                    ),),
              ],),),
        ],
      ),
    );
  }
}
