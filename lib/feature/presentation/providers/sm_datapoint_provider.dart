import 'package:flutter/material.dart';

import '../../domain/entity/datapoint_entity.dart';
import '../../domain/entity/sm_datapoint_entity.dart';

class SmDataPointProvider extends ChangeNotifier {
  SmDataPointEntity? _user;

  SmDataPointEntity? get user => _user;

  void setUser(SmDataPointEntity user) {
    _user = user;

    notifyListeners();
  }
}