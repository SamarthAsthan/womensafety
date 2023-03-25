import 'package:app/constants.dart';
import 'package:app/views/auth/loginpage.dart';
import 'package:app/views/onboard/screen1.dart';
import 'package:app/views/onboard/screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        PageView(
          controller: _controller,
          children: [
            ScreenOne(),
            ScreenTwo(),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 623.h),
          child: Column(
            children: [
              Container(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                  effect: WormEffect(activeDotColor: primaryColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 65.0.h, left: 15.w, right: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: InkWell(
                        child: Container(
                          height: 58.h,
                          width: 134.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: Center(
                            child: Text(
                              'Skip',
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: InkWell(
                        child: Container(
                          height: 58.h,
                          width: 134.w,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
