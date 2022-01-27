import 'package:clinic/pages/profile/create_profile.dart';
import 'package:clinic/pages/profile/pin_screen.dart';
import 'package:clinic/pages/profile/phoneNumberScreen.dart';
import 'package:clinic/pages/profile/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
         
      ),
      routes: {
        '/': (context) =>  BottomNavigation(),
        '/profile/phone_number': (context) => PhoneNumberScreen(),
        '/profile/pin_screen':(context)=> PinSccreen(),
        '/profile/create_profile':(context)=> CreateProfile(),
      },
    );
  }
}
