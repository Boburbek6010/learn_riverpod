import 'package:flutter_riverpod/flutter_riverpod.dart';


final homeNotifierProvider = StateNotifierProvider<HomeNotifier, int>((ref) => HomeNotifier());

class HomeNotifier extends StateNotifier<int>{
  HomeNotifier() : super(0);

  void increment(){
    state++;
  }

}