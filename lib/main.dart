import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store/HomeScreen/provider/home_Provider.dart';
import 'package:provider/provider.dart';

import 'HomeScreen/view/homeScreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
      ),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
      },
    ),
  ));
}
