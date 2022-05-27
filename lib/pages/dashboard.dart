import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    Widget makDiv(String image, String title, String description) {
      return Padding(
        padding: const EdgeInsets.only(left: 33, top: 10),
        child: Container(
          height: height * 0.19,
          width: width * 0.38,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey,
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image.asset(
                image,
                height: height * 0.11,
                width: width * 0.21,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w300,
                    fontSize: 9,
                    color: Color(0xFF626262)),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/Near_repair_Type_II-removebg-preview.png",
          height: height * 0.1,
          width: width * 0.2,
        ),
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.apps,
              color: Colors.black,
              size: 30,
            ),
          );
        }),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
                onTap: () {
                  //  Navigator.push(
                  //           context,
                  //           PageTransition(
                  //               type: PageTransitionType.rightToLeft,
                  //               reverseDuration: Duration(seconds: 1),
                  //               duration: Duration(seconds: 1),
                  //               child: About()));
                },
                child: Icon(
                  Icons.help_outline,
                  color: Colors.black,
                  size: 30,
                )),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffD6D7D7),
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.11,
              width: width * 0.85,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey,
                    )
                  ],
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(0, 172, 238, 10),
                    Color.fromRGBO(29, 191, 115, 1),
                  ]),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/apbarr.png",
                      height: height * 0.13,
                      width: width * 0.13,
                      // fit: BoxFit.fitHeight,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Book your appointment",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF)),
                      ),
                      Text(
                        "Find nearest repair store with free quotation",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 9,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              children: [
                makDiv(
                    "assets/Icons/carbon_wifi-not-secure.png",
                    "Network Unlock",
                    "After unlock you can use your\nPhone any country and any sim"),
                makDiv(
                    "assets/Icons/icon-png (1).png",
                    "Buy/Sale Devices",
                    "Now phone buy and sale is easier\nthen before you can see all prices\nand sell your phone just in minutes"),
              ],
            ),
            Row(
              children: [
                makDiv(
                    "assets/Icons/icon-ss.png",
                    "TopUp You Phone",
                    "You can load your talk time\nBalance over counteries just by\nnumber"),
                makDiv(
                    "assets/Icons/carbon_wifi-not-secure.png",
                    "Diagnostics",
                    "You can diagnos the all issue in\nyour phone in one clicke"),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            ),
            Row(
              children: [
                makDiv(
                    "assets/Icons/Diagnostic-icon.png",
                    "Back Up & Restore",
                    "You can transfer your data faster\nand sequre to PC or Phone"),
                makDiv(
                    "assets/Icons/carbon_wifi-not-secure.png",
                    "Store",
                    "All quantity products cheaper price,\nThen everywhere buy conline or\nwalk in your nearest store.")
              ],
            )
          ],
        ),
      ),
    );
  }
}
