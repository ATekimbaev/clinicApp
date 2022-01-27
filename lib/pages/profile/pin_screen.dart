import 'package:clinic/cosnt/clinic_Colors.dart';
import 'package:clinic/cosnt/clinic_Text_Style.dart';
import 'package:clinic/cosnt/widgets/clinnic_button.dart';
import 'package:flutter/material.dart';

class PinSccreen extends StatelessWidget {
  const PinSccreen({Key? key}) : super(key: key);

  void onPressPin(BuildContext context) {
    Navigator.pushNamed(context, '/profile/create_profile');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        title: Text(
          'Подтверждение номера',
          style: ClinicTextStyle.sfW600s17,
        ),
        backgroundColor: ClinnicColors.appBarrCollor,
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Введите код из смс',
                style: ClinicTextStyle.sfW500S22,
              ),
            ),
            SizedBox(
              height: 140,
            ),
            TextField(
              decoration: InputDecoration(
                  prefix: Text('Код'),
                  suffix: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye),
                  )),
              textAlign: TextAlign.center,
              obscureText: true,
              maxLength: 4,
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(
              height: 24,
            ),
            TextButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  'Получить код повторно',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Spacer(),
            ClinicButton(
              text: 'Далее',
              onPressed: () =>onPressPin(context),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
