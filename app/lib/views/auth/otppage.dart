import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class OptPage extends StatelessWidget {
  const OptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFBF3FA),
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: Column(children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFFBF3FA),
              ),
              height: 50,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 18.95.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 200),
                    child: Text(
                      "OTP Verification",
                    ),
                  )
                ],
              ),
            ),
          ]),
          Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: Text(
                      "We have sent a verification code to",
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 120.0),
                        child: Text(
                          "+91 xxxxx-xxxx",
                          style: GoogleFonts.poppins(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 4.0),
                        child: Icon(
                          Icons.edit,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: PinCodeFields(
              length: 4,
              fieldBorderStyle: FieldBorderStyle.square,
              responsive: false,
              fieldHeight: 40.0,
              fieldWidth: 40.0,
              borderWidth: 2.0,
              activeBorderColor: Colors.grey,
              activeBackgroundColor: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              keyboardType: TextInputType.number,
              autoHideKeyboard: false,
              fieldBackgroundColor: Colors.white,
              borderColor: Colors.grey,
              textStyle: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
              onComplete: (output) {
                // Your logic with pin code
                print(output);
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {},
                  child: const Text('Resent SMS in 16 s')),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {},
                  child: const Text('Call me in 16 s')),
            ],
          ),
        ]),
      ),
    );
  }
}
