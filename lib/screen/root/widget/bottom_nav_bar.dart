import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../core/bloc/battom_nav_bar/navigation_cubit.dart';
import '../../../core/constants/nav_bar_itm.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.index,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.green,
            selectedItemColor: Colors.black,
            items: const [
             BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark,
                ),
                label: 'catalog',
              ), 
             BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark,
                ),
                label: 'catalog',
              ),
             BottomNavigationBarItem(
                activeIcon: Icon(Icons.abc),
                icon: Icon(
                  Icons.rocket_outlined,
                ),
                label: 'course',
              ),
             BottomNavigationBarItem(
                icon: Icon(
                  Icons.car_repair_sharp,
                ),
                label: 'cart',
              ),
             BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'accaunt',
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.home);
              } else if (index == 1) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.catalog);
              } else if (index == 2) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.course);
              }
              else if (index == 3) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.cart);
              }
              else if (index == 4) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.accaunt);
              }
            },
          );
        },
      );
  }
}