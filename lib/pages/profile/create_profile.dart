import 'package:clinic/cosnt/clinic_Colors.dart';
import 'package:clinic/cosnt/clinic_Text_Style.dart';
import 'package:clinic/cosnt/widgets/clinnic_button.dart';
import 'package:flutter/material.dart';

class CreateProfile extends StatelessWidget {
  const CreateProfile({Key? key}) : super(key: key);

  void onPressAuth(BuildContext context) {
    Navigator.pushNamed(context, '/profile/pin_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        title: Text(
          'Создание профиля',
          style: ClinicTextStyle.sfW600s17,
        ),
        backgroundColor: ClinnicColors.appBarrCollor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.close),
          color: ClinnicColors.blackwithopacity,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Имя',
              style: ClinicTextStyle.sfW400S15,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Введите ваше имя'),
            ),
            SizedBox(
              height: 32,
            ),
            Text('Фамилия', style: ClinicTextStyle.sfW400S15),
            TextField(
              decoration: InputDecoration(hintText: 'Введите вашу фамилию'),
            ),
            Spacer(),
            ClinicButton(text: 'Далее', onPressed: () {}),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
