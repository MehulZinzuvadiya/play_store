import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  int i=0;
  bool navigationClick = true;

  void navigationOnClick()
  {
    navigationClick = !navigationClick;
    notifyListeners();
  }

  void navigationPosition(int value)
  {
    i = value;
    notifyListeners();
  }
}
