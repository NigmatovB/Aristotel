// ignore_for_file: depend_on_referenced_packages

import 'package:aristotel/core/constants/nav_bar_itm.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(const NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.catalog:
        emit(const NavigationState(NavbarItem.catalog, 1));
        break;
      case NavbarItem.course:
        emit(const NavigationState(NavbarItem.course, 2));
        break;
      case NavbarItem.cart:
        emit(const NavigationState(NavbarItem.cart, 3));
        break;
      case NavbarItem.accaunt:
        emit(const NavigationState(NavbarItem.accaunt, 4));
        break;
    }
  }
}