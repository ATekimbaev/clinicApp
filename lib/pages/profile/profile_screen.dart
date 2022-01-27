import 'package:clinic/cosnt/clinic_Colors.dart';
import 'package:clinic/cosnt/clinic_Text_Style.dart';
import 'package:clinic/cosnt/widgets/clinnic_button.dart';
import 'package:clinic/pages/profile/widgets/bottom_bar.dart';
import 'package:clinic/pages/profile/widgets/profile_content.dart';
import 'package:flutter/material.dart';

class ProfileScrren extends StatelessWidget {
  const ProfileScrren({Key? key}) : super(key: key);

  void onPressLogin(BuildContext context) {
    Navigator.pushNamed(context, '/profile/phone_number');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        backgroundColor: ClinnicColors.appBarrCollor,
        title: Text(
          'Профиль',
          style: ClinicTextStyle.sfW600s17,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 2,
            ),
            Text(
              'Зачем нужен профиль?',
              style: ClinicTextStyle.sfW500S22,
            ),
            const SizedBox(
              height: 25,
            ),
            const ProfileContent(
              images: 'profile_hospital.png',
              title: 'Записывайтесь на прием к самым лучшим специалитам',
            ),
            const SizedBox(
              height: 30,
            ),
            const ProfileContent(
              images: 'profile_note.png',
              title: 'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку',
            ),
            const SizedBox(
              height: 30,
            ),
            const ProfileContent(
              images: 'profile_comment.png',
              title: 'Просматривайте отзывы о врачах и дополняйте собственными комментариями',
            ),
            const SizedBox(
              height: 30,
            ),
            const ProfileContent(
              images: 'profile_ring.png',
              title: 'Получайте уведомления о приеме или о поступивших сообщениях',
            ),
            const SizedBox(
              height: 20,
            ),
            ClinicButton(
              text: 'Войти',
              onPressed: () => onPressLogin(context),
            ),
          ],
        ),
      ),
    );
  }
}
