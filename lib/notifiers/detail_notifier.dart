import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final detailNotifier = ChangeNotifierProvider.autoDispose((ref) => DetailNotifier());

class DetailNotifier extends ChangeNotifier{
  int counter = 0;

  void increment(){
    counter++;
    notifyListeners();
  }




}