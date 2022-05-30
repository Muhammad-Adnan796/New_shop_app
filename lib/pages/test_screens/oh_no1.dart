import 'package:diagnose/pages/test_screens/loading.dart';
import 'package:diagnose/pages/test_screens/headphone.dart';
import 'package:diagnose/pages/test_screens/screen_analysis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class Diagnose3 extends StatefulWidget {
  const Diagnose3({Key? key}) : super(key: key);

  @override
  State<Diagnose3> createState() => _Diagnose3State();
}

class _Diagnose3State extends State<Diagnose3> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Figma Flutter Generator Diagose1Widget - FRAME
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(29, 191, 115, 1),
              Color.fromRGBO(0, 172, 238, 1)
            ]),
      ),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.08,
          ),
          Text(
            '2/8',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Roboto',
              fontSize: 12,
              decoration: TextDecoration.none,
              letterSpacing: -0.3333333432674408,
              fontWeight: FontWeight.normal,
              height: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/vector.svg', semanticsLabel: 'vector'),
              SizedBox(
                width: width * 0.04,
              ),
              Container(
                width: width * 0.7,
                child: LinearProgressIndicator(
                  value: 0.2,
                  backgroundColor: Colors.white.withOpacity(0.5),
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.15,
          ),
          Container(
            width: width * 0.24,
            height: height * 0.12,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/cross.gif',
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            height: height * 0.08,
          ),
          Text(
            'Oh, no!',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Roboto',
                fontSize: 35,
                decoration: TextDecoration.none,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
          Text(
            'Make sure no headphones or\n any  otheraudio cables are \n plugged into yourphone.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Advent Pro',
                fontSize: 16,
                decoration: TextDecoration.none,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
          SizedBox(
            height: height * 0.19,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: width * 0.6,
              height: height * 0.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  primary: Colors.white,
                  elevation: 6,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      reverseDuration: const Duration(microseconds: 1),
                      duration: const Duration(microseconds: 1),
                      child: const HEadphone1(),
                    ),
                  );
                },
                child: const Text(
                  "Try Again",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.black,
                    fontFamily: 'Advent Pro',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.005,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ScreenAnalysis(),),);
            },
            child: Text(
              'Skip',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Advent Pro',
                  fontSize: 25,
                  decoration: TextDecoration.none,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          )
        ],
      ),
    );
  }
}
