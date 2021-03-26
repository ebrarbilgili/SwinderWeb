import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:swinderweb/home.dart';

void main() {
  runApp(
    EasyLocalization(
      path: 'assets/locales',
      supportedLocales: [Locale('en', 'US'), Locale('tr', 'TR')],
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swinder For Instagram',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      checkerboardRasterCacheImages: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePageView(),
    );
  }
}
