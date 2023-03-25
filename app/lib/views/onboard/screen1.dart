import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 497.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Stay connected with loved ones",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Stay connected with loved ones,\n          stay safe with police.",
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFFBF3FA),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100))),
          width: 390.w,
          height: 458.h,
          child: Image.asset(
            "assets/images/pic1.png",
            height: 339.h,
            width: 390.w,
          ),
        ),
      ],
    );
  }
}
