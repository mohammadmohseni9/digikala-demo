//import 'package:digikala_demo/appbar.dart';

import 'package:digikala_demo/appbar.dart';
import 'package:digikala_demo/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'content.dart';
import 'sliderClass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(localizationsDelegates: [
      // ... app-specific localization delegate[s] here
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ], supportedLocales: [
      //  const Locale('en', 'english'), // English
      const Locale('fa', 'farsi'), // persian
    ], debugShowCheckedModeBanner: false, title: 'Flutter Demo',

        home: home());
  }
}



class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(),
        body: sliderContent(),
        bottomNavigationBar: bottomnavBar(),
      ),
    );
  }
}

