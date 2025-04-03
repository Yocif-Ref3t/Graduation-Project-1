import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'language_item.dart';

class LanguageViewBody extends StatefulWidget {
  const LanguageViewBody({super.key});

  @override
  State<LanguageViewBody> createState() => _LanguageViewBodyState();
}

class _LanguageViewBodyState extends State<LanguageViewBody> {
  String get currentLanguage => context.locale.languageCode;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        LanguageItem(
          title: "Arabic",
          isSelected: currentLanguage == "ar",
          onTap: () {
            context.setLocale(Locale("ar"));
            setState(() {});
          },
        ),
        LanguageItem(
          title: "English",
          isSelected: currentLanguage == "en",
          onTap: () {
            context.setLocale(Locale("en"));
            setState(() {});
          },
        ),
      ],
    );
  }
}
