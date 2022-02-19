import 'package:azkarappass2/secreen/azkarApp.dart';
import 'package:azkarappass2/secreen/bioApp.dart';
import 'package:azkarappass2/secreen/lunchApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,


        ],

        supportedLocales: [
          Locale('ar'),
          Locale('en'),
        ],
        locale: Locale('fr'),
        initialRoute: '/lunchsecreen',
        routes: {
          '/lunchsecreen':(context)=>  LunchSecreen(),
          '/azkar' : (context)=> Azkar(),
          '/bio' : (context)=> Bio(),

        }

    );



  }
}

