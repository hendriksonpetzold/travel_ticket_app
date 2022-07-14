import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .2,
      width: MediaQuery.of(context).size.width * .8,
      child: const Text(
        'Para onde você deseja viajar?',
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
