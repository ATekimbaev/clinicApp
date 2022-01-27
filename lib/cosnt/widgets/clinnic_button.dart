import 'package:flutter/material.dart';
import '../clinic_Colors.dart';

class ClinicButton extends StatelessWidget {
  const ClinicButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 54,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 39.5),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                ClinnicColors.buttonColor,
              ),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      );
}
