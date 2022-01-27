import 'package:clinic/cosnt/clinic_Text_Style.dart';
import 'package:flutter/material.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({Key? key, required this.title, required this.images})
      : super(key: key);

  final String title;
  final String images;

  @override
  Widget build(BuildContext context) => Row(children: [
        Image.asset(
          'assets/images/$images',
          height: 32,
          width: 32,
        ),
        SizedBox(
          width: 18,
        ),
        Expanded(
          child: Text(
            title,
            style: ClinicTextStyle.sfW400S15,
          ),
        ),
      ]);
}
