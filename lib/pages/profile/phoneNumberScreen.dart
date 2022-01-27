import 'package:clinic/cosnt/clinic_Colors.dart';
import 'package:clinic/cosnt/clinic_Text_Style.dart';
import 'package:clinic/cosnt/widgets/clinnic_button.dart';
import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  void onPressAuth(BuildContext context) {
    Navigator.pushNamed(context, '/profile/pin_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        title: Text(
          'Вход',
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Войти',
              style: ClinicTextStyle.sfW700s34,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Номер телефона',
              style: ClinicTextStyle.sfW400S15,
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                prefix: Text(
                  '0 ',
                  style: ClinicTextStyle.sfW600s17,
                ),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.black))
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.',
              style: ClinicTextStyle.sfW400S15,
            ),
            const Spacer(),
            ClinicButton(
              onPressed: () => onPressAuth(context),
              text: 'Далее',
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
