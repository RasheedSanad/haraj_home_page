import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavigationProvider =
    StateNotifierProvider.autoDispose<BottomNavigationRiverpod, int>((ref) {
  return BottomNavigationRiverpod(1);
});

class BottomNavigationRiverpod extends StateNotifier<int> {
  BottomNavigationRiverpod(super.state);

  void setPosition(int value) {
    state = value;
  }
}
