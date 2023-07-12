import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/home/Homepage.dart';
import 'package:get/get.dart';

import 'Aboutus.dart';
import 'Bottomnavbar/bottomnavbar.dart';
import 'Lists.dart';
import 'Menu.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(
        360,
        690,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return const GetMaterialApp(
          title: 'Coffee App',
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
      },
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages = <Widget>[
    const MyHomePage(),
    const Menu(),
    const Lists(),
    const About_us(),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(
        12,
        15,
        20,
        20,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find The Best',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                const Text(
                  'Coffee For You',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                10,
              ),
              child: SizedBox(
                height: 50.h,
                width: 40.w,
                child: Image.asset(
                  'images/apple.png',
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavbar(),
      body: Center(
        child: _pages.elementAt(
          _selectedIndex,
        ),
      ),
    );
  }
}
