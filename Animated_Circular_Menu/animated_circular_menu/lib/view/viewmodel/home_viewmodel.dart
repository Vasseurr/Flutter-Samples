// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';

enum HomeViewState { IDLE, BUSY }

class HomeViewModel with ChangeNotifier {
  HomeViewState _state = HomeViewState.IDLE;

  set state(HomeViewState state) {
    _state = state;
    notifyListeners();
  }

  HomeViewState get state => _state;
}
