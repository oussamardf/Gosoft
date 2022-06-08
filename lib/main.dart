import 'package:demo5/router/route_guard.dart';
import 'package:demo5/router/router.gr.dart';
import 'package:demo5/ui/pages/BarCode.dart';
import 'package:demo5/ui/pages/Payment.dart';
import 'package:demo5/ui/pages/home.dart';
import 'package:demo5/ui/pages/login.dart';

import 'package:demo5/util/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var token = prefs.getString('token');
  print(token);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: token == null ? MyLogin() : HOME(),
      builder: EasyLoading.init(),
      routes: {
        '/home': (_) => const HOME(),
        '/login':(_) => MyLogin(),

        '/paymrnt':(_)=> payment()
      },

      title: 'Localizations Sample App',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English, no country code
        Locale('es '), // Spanish, no country code
        Locale('sv', ''),
        Locale('ar',''),
        Locale('fr','')
      ],

    ),


  );
  configLoading();
}



void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;

}




