import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_project1/core/constants/app_router.dart';
import 'package:graduation_project1/core/constants/app_theme.dart';
import 'package:graduation_project1/core/constants/translations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(
    EasyLocalization(
      supportedLocales: Translations.supportedLocales,
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      child: Diabeat(),
    ),
  );
}

class Diabeat extends StatelessWidget {
  const Diabeat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme.light,
      routerConfig: AppRouter.router,
    );
  }
}
