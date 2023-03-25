import 'package:app/constants.dart';
import 'package:app/mainmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 251, 243, 250),
        leading: Icon(
          PhosphorIcons.caretLeftBold,
          size: 32.0.sp,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: 20.h, right: 20.w, top: 10.w, bottom: 15.h),
            child: Text(
              "Create account is fast and easy!",
              style: GoogleFonts.poppins(
                  fontSize: 18.sp, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
            child: Container(
              width: 350.w,
              height: 45.h,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Full Name* (as per Aadhar)",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
            child: Text(
              "Date of Birth* (as per Aadhar)",
              style: GoogleFonts.poppins(
                  fontSize: 11.sp, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 15.w, bottom: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Date",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  width: 90.w,
                  height: 39.h,
                ),
                Container(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Month",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  width: 103.w,
                  height: 39.h,
                ),
                Container(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Year",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  width: 110.w,
                  height: 39.h,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
            child: Container(
              width: 350.w,
              height: 45.h,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Mobile Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
            child: Container(
              width: 350.w,
              height: 45.h,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email ID",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
            child: Container(
              width: 350.w,
              height: 45.h,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Aadhaar Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.w, bottom: 10.h),
            child: Text(
              "Nirbhaya uses Aadhar to verify identity to the user \nand also enable authentic document access",
              style: GoogleFonts.poppins(
                color: Color.fromARGB(255, 101, 101, 101),
                fontSize: 11.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.w, bottom: 10.h),
            child: TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  backgroundColor: primaryColor,
                  minimumSize: Size(323.h, 50.w)),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainMenu()),
                )
              },
              child: Text(
                "Submit",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 90.w, bottom: 5.h),
            child: Column(
              children: [
                Text(
                  "By verifying your number, you agree to our",
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 101, 101, 101),
                    fontSize: 9,
                  ),
                ),
                Text(
                  "Terms of service Privacy Policy Content Policy",
                  style: GoogleFonts.poppins(
                    decoration: TextDecoration.underline,
                    color: Color.fromARGB(255, 101, 101, 101),
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 70.w),
            child: Row(
              children: [
                Text(
                  "Already have an account? ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 14,
                  ),
                ),
                Text(
                  "Sign In!",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: primaryColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
