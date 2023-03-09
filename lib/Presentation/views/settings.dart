// ignore_for_file: avoid_unnecessary_containers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tasty_app/Presentation/views/settings_views/call_us.dart';
import 'package:tasty_app/Presentation/widgets/Custom_settingwidget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  static String ID = "SettingsPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomSettingswidget(
                  ontap: () {},
                  text: "Account",
                  iconOfSetting: const Icon(Icons.person_2),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomSettingswidget(
                  ontap: () {},
                  text: "App settings",
                  iconOfSetting: const Icon(Icons.settings),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomSettingswidget(
                  ontap: () {},
                  text: "Notifications",
                  iconOfSetting: const Icon(Icons.notifications),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomSettingswidget(
                  ontap: () {},
                  text: "About us",
                  iconOfSetting: const Icon(Icons.arrow_forward_ios),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomSettingswidget(
                  ontap: () {
                    Navigator.pushNamed(context, CallUsPage.ID);
                  },
                  text: "Call us",
                  iconOfSetting: const Icon(Icons.phone),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomSettingswidget(
                  ontap: () async {
                    await FirebaseAuth.instance.signOut();
                  },
                  text: "Logout",
                  iconOfSetting: const Icon(Icons.logout),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
