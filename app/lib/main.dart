import 'package:app/background.dart';
import 'package:app/mainmenu.dart';
import 'package:app/views/auth/loginpage.dart';
import 'package:app/views/auth/otppage.dart';
import 'package:app/views/homepage/home_page.dart';
import 'package:app/views/onboard/onboard.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const WomenSafetyApp(),
  );
}

class WomenSafetyApp extends StatelessWidget {
  const WomenSafetyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true),
          home: Onboarding(),
        );
      },
    );
  }
}
