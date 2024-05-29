import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXLocalization extends StatelessWidget {
  const GetXLocalization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Localization"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${'title'.tr} : ${'value'.tr}"),
            const SizedBox(height: 20),
            const LocaleDropdown(),
          ],
        ),
      ),
    );
  }
}


class LocaleDropdown extends StatefulWidget {
  const LocaleDropdown({super.key});

  @override
  State<LocaleDropdown> createState() => _LocaleDropdownState();
}

class _LocaleDropdownState extends State<LocaleDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<Locale>(
      value: Get.locale,
      items: const [
        DropdownMenuItem(
          value: Locale('en', 'US'),
          child: Text('English'),
        ),
        DropdownMenuItem(
          value: Locale('hi', 'IN'),
          child: Text('Hindi'),
        ),
        DropdownMenuItem(
          value: Locale('gu', 'IN'),
          child: Text('Gujarati'),
        ),
      ],
      onChanged: (Locale? newValue) {
        if (newValue != null) {
          Get.updateLocale(newValue);
        }
      },
    );
  }
}
