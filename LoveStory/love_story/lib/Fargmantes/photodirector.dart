import 'package:flutter/material.dart';

class PhotoCato extends StatelessWidget {
  const PhotoCato({
    super.key,
    required this.photopicker,
  });
  final String photopicker;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/Images/$photopicker',
      ),
    );
  }
}
