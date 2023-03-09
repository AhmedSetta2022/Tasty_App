import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tasty_app/Presentation/widgets/Custom_settingwidget.dart';
import 'package:url_launcher/url_launcher.dart';

class CallUsPage extends StatelessWidget {
  const CallUsPage({super.key});
  static String ID = "CallUsPage";

  @override
  Widget build(BuildContext context) {
    launchWhatsapp() async {
      var whatsapp = "+201282211241";

      var whatsappAndroid =
          Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
      if (await canLaunchUrl(whatsappAndroid)) {
        await launchUrl(whatsappAndroid);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("WhatsApp is not installed on the device"),
          ),
        );
      }
    }

    void _sendSMS(String message, List<String> recipents) async {
      String _result = await sendSMS(message: message, recipients: recipents)
          .catchError((onError) {
        print(onError);
      });
      print(_result);
    }

    _callNumber() async {
      const number = '+201282211241';
      var res = await FlutterPhoneDirectCaller.callNumber(number);
    }

    launchfacebook() async {
      var facebook = "https://www.facebook.com/AhmedSetta2022";

      var whatsappAndroid =
          Uri.parse("https://www.facebook.com/AhmedSetta2022");
      if (await canLaunchUrl(whatsappAndroid)) {
        await launchUrl(whatsappAndroid);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("This undefiend account"),
          ),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: const Text(
          "Call Us",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
              color: Colors.white70),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomSettingswidget(
              text: "Whatsapp",
              iconOfSetting: const Icon(FontAwesomeIcons.whatsapp),
              ontap: () {
                launchWhatsapp();
              }),
          const SizedBox(
            height: 15,
          ),
          CustomSettingswidget(
              text: "Facebook",
              iconOfSetting: const Icon(FontAwesomeIcons.facebook),
              ontap: () {
                launchfacebook();
              }),
          const SizedBox(
            height: 15,
          ),
          CustomSettingswidget(
              text: "PhoneCall",
              iconOfSetting: const Icon(FontAwesomeIcons.phone),
              ontap: () {
                _callNumber();
              }),
          const SizedBox(
            height: 15,
          ),
          CustomSettingswidget(
              text: "Send sms",
              iconOfSetting: const Icon(FontAwesomeIcons.message),
              ontap: () {
                _sendSMS("Welcome , iam looking forward for ur messege",
                    ["+201282211241"]);
              })
        ]),
      ),
    );
  }
}
