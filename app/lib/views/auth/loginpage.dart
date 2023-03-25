import 'package:app/constants.dart';
import 'package:app/views/auth/otppage.dart';
import 'package:app/views/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(top: 420, left: 25, right: 25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Container(
                    height: 50,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      keyboardType: TextInputType.number,
                      controller: TextEditingController(text: "+91"),
                      decoration: InputDecoration(
                          hintText: "xxxxx xxxxx",
                          prefix: Padding(
                            padding: const EdgeInsets.only(right: 5),
                          ),
                          prefixIcon: const Icon(Icons.phone),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(100))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6, top: 20),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        minimumSize: const Size(400, 50)),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OptPage()),
                      )
                    },
                    child: Text(
                      "Get OTP",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "Sign Up!",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: primaryColor,
                            fontSize: 14,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 240.0),
                  child: Column(
                    children: [
                      Text(
                        " By verifying your number, you agree to our",
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 101, 101, 101),
                          fontSize: 12.sp,
                        ),
                      ),
                      Text(
                        "Terms of service Privacy Policy Content Policy",
                        style: GoogleFonts.poppins(
                            decoration: TextDecoration.underline,
                            color: const Color.fromARGB(255, 101, 101, 101),
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Color(0xFFFBF3FA),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100))),
          width: double.infinity,
          height: 327.h,
        ),
      ],
    );
  }
}
