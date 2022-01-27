
import 'package:clinic/cosnt/clinic_Colors.dart';
import 'package:clinic/cosnt/clinic_Text_Style.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({Key? key, required this.title}) : super(key: key);
  final String title;


  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 1.5,
        title: Text(
          title,
          style: ClinicTextStyle.sfW600s17,
        ),
        backgroundColor: ClinnicColors.appBarrCollor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.close),
          color: ClinnicColors.blackwithopacity,
        ),
      );
  }
}