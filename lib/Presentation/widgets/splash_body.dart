import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splashscreenbody extends StatelessWidget {
  const Splashscreenbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage('assets/images/tastylogo.jpg'),
            width: 400,
          ),
          SizedBox(
            height: 50,
          ),
          SpinKitSpinningLines(
            color: Colors.red,
            size: 50,
          )
        ],
      ),
    );
  }
}
