import 'package:clinic/cosnt/clinic_Colors.dart';
import 'package:clinic/cosnt/clinic_Text_Style.dart';
import 'package:clinic/pages/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import '../phoneNumberScreen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 4;
  final List<Widget> pages = [
    ProfileScrren(),
    ProfileScrren(),
    ProfileScrren(),
    ProfileScrren(),
    ProfileScrren()
  ];

  void onChangeIndex(int index, BuildContext context) {
    switch (index) {
      case 0:
        currentIndex = index;

        break;
      case 1:
        currentIndex = index;
        break;
      case 2:
        currentIndex = index;
        break;
      case 3:
        currentIndex = index;
        break;
      case 4:
        currentIndex = index;
        break;
    }
    setState(() {});
  }

  final imageList = [
    Image.asset(
      'assets/images/vector_doctor.png',
      height: 17.5,
      width: 23.33,
    ),
    Image.asset(
      'assets/images/vector_favorite.png',
      height: 20,
      width: 16,
    ),
    Image.asset(
      'assets/images/vector_page.png',
      height: 21,
      width: 21,
    ),
    Image.asset(
      'assets/images/vector_profile.png',
      height: 21,
      width: 22,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => onChangeIndex(value, context),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: ClinnicColors.barColor,
        selectedItemColor: ClinnicColors.buttonColor,
        selectedLabelStyle: ClinicTextStyle.sfW500S10,
        unselectedLabelStyle: ClinicTextStyle.sfW500S10,
        items: [
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/images/vector_doctor.png',
                height: 17.5,
                width: 23.33,
                color: ClinnicColors.buttonColor,
              ),
              icon: imageList[0],
              label: 'Доктора'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/images/vector_page.png',
                height: 21,
                width: 21,
                color: ClinnicColors.buttonColor,
              ),
              icon: imageList[2],
              label: 'Статьи'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.access_alarm_rounded,
                size: 0,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/images/vector_favorite.png',
                height: 20,
                width: 16,
                color: ClinnicColors.buttonColor,
              ),
              icon: imageList[1],
              label: 'Мои доктора'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/images/vector_profile.png',
                height: 21,
                width: 22,
                color: ClinnicColors.buttonColor,
              ),
              icon: imageList[3],
              label: 'Профиль'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ClinnicColors.buttonColor,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/vector.png',
              height: 22.67,
              width: 26.67,
            ),
            Text(
              'Вызов',
              style: ClinicTextStyle.sfW500S10
                  .copyWith(color: ClinnicColors.appBarrCollor),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            (Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
