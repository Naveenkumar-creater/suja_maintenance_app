import 'package:flutter/material.dart';



import '../../domain/entity/check_list_entity.dart';

class CheckListProvider extends ChangeNotifier {
  CheckListEntity? _user;

  CheckListEntity? get user => _user;

  void setUser(CheckListEntity user) {
    _user = user;

    notifyListeners();
  }
   get acrpAssetId {
    // Logic to get and return acrpassetId
    return user?.responseData?.checklist.first.acrpassetId;
  }
}