import 'package:diagnose/appointments_screens/Cancel_Appoinmetn.dart';
import 'package:diagnose/appointments_screens/Book_appionment.dart';
import 'package:diagnose/pages/splash.dart';
import 'package:diagnose/pages/wish_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(896, 414),
        builder: (context, Widget) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash(),
            routes: {
              "/BookAppoinment": (context) => BookAppoinment(),
              "/CancelAppoinment": (context) => CancelAppoinment(),
            },
          );
        });
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:task_app/screens/login_page.dart';

// void main() {
// WidgetsFlutterBinding.ensureInitialized();
// SystemChrome.setPreferredOrientations(
//     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
// Widget build(BuildContext context) {
//   return ScreenUtilInit(
//     builder: (_) => const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Splash(),
//     ),
//     designSize: const Size(896, 414),
//   );
// }
// }