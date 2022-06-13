//  bottom nav bar widgets
import 'package:diagnose/navbar/grediant_icon.dart';
import 'package:diagnose/navbar/navb.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({Key? key}) : super(key: key);

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    Widget circularicon() {
      return Padding(
        padding: const EdgeInsets.only(left: 150, top: 10),
        child: Container(
          width: width * 0.16,
          height: height * 0.08,
          decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 1,
                  color: Color(0XFF00ACEE).withOpacity(0.8))
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  reverseDuration: Duration(seconds: 1),
                  duration: Duration(seconds: 1),
                  child: BottomNavbar(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                  width: width * 0.5,
                  height: height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 2,
                          color: Colors.grey.withOpacity(0.6))
                    ],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: GradientIcon(
                    Icons.home,
                    35,
                    LinearGradient(
                      colors: [Color(0XFF00ACEE), Color(0XFF1DBF73)],
                    ),
                  )),
            ),
          ),
        ),
      );
    }

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 34),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 5, spreadRadius: 2, color: Color(0XFF00ACEE))
              ],
              gradient: LinearGradient(
                colors: [Color(0XFF00ACEE), Color(0XFF1DBF73)],
              ),
            ),
          ),
        ),
        circularicon(),
      ],
    );
  }
}
