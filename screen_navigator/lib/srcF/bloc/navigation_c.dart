import 'dart:async';

import 'navigation_provider.dart';

class NavigationDrawerBloc {
  final navigationController = StreamController();
  NavigationProvider navigationProvider = new NavigationProvider();

  Stream get getNavigation => navigationController.stream;

  void updateNavigation(String navigation) {
    navigationProvider.updateNavigation(navigation);
    navigationController.sink.add(navigationProvider.currentNavigation);
  }


  void dispose() {
    navigationController.close();
  }


  
}
  final bloc = NavigationDrawerBloc();
