import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store/HomeScreen/provider/home_Provider.dart';
import 'package:play_store/tab1/provider/foryou_provider.dart';
import 'package:play_store/tab1/view/For%20You.dart';
import 'package:play_store/tab2/view/TopChartScreen.dart';
import 'package:provider/provider.dart';
import 'HomeScreen/view/homeScreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ForYouProvider(),
      ),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        'foryou': (context) => Foryou(),
        'Top': (context) => TopChartScreen(),
      },
    ),
  ));
}
