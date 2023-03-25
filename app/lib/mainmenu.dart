import 'package:app/background.dart';
import 'package:app/constants.dart';
import 'package:app/views/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:shake/shake.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        currentIndex = 2;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BackGroundPage(),
          ),
        );
        // Do stuff on phone shake
      },
      minimumShakeCount: 4,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 2000,
      shakeThresholdGravity: 2.7,
    );

    // To close: detector.stopListening();
    // ShakeDetector.waitForStart() waits for user to call detector.startListening();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomePage(),
          HomePage(),
          BackGroundPage(),
          HomePage(),
          HomePage(),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: Colors.white,
        items: [
          TabItem(
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              colorFilter: const ColorFilter.mode(
                Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/home.svg',
            ),
          ),
          TabItem(
            icon: SvgPicture.asset(
              'assets/images/hand.svg',
              colorFilter: const ColorFilter.mode(
                Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/hand.svg',
            ),
          ),
          TabItem(
            icon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.red),
              child: Center(
                  child: Text(
                'SOS',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
            ),
            activeIcon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.red),
              child: Center(
                  child: Text(
                'SOS',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
            ),
          ),
          TabItem(
            icon: SvgPicture.asset(
              'assets/images/arrow.svg',
              colorFilter: const ColorFilter.mode(
                Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/arrow.svg',
            ),
          ),
          TabItem(
              icon: SvgPicture.asset(
                'assets/images/human.svg',
                colorFilter: const ColorFilter.mode(
                  Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: SvgPicture.asset('assets/images/human.svg'))
        ],
        initialActiveIndex: 0,
        onTap: (int index) => setState(() => currentIndex = index),
      ),
    );
  }

  @override
  // ignore: todo
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

/*[
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/home.svg',
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  'assets/images/home.svg',
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/hand.svg',
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  'assets/images/hand.svg',
                ),
                label: 'Categories'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/arrow.svg',
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  'assets/images/arrow.svg',
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/human.svg',
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset('assets/images/human.svg'),
                label: 'Account'),
          ],*/