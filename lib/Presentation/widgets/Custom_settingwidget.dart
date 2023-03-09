import 'package:flutter/material.dart';

class CustomSettingswidget extends StatelessWidget {
  const CustomSettingswidget(
      {super.key,
      required this.text,
      required this.iconOfSetting,
      required this.ontap});
  final String text;
  final Icon iconOfSetting;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(10, 10),
                blurRadius: 40,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(.4))
          ]),
          // ignore: prefer_const_constructors
          child: GestureDetector(
            onTap: ontap,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              shadowColor: Colors.deepPurple,
              elevation: 8,
            ),
          )),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            Icon(
              iconOfSetting.icon,
              size: 30,
              color: Colors.deepPurple,
            ),
          ],
        ),
      )
    ]);
  }
}
