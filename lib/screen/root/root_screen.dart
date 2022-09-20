import 'package:aristotel/core/data/icons.dart';
import 'package:aristotel/utils/colors.dart';
import 'package:aristotel/screen/accaunt/accaunt_screen.dart';
import 'package:aristotel/screen/cart/cart_screen.dart';
import 'package:aristotel/screen/cataloge/catalog_screen.dart';
import 'package:aristotel/screen/course/course_screen.dart';
import 'package:aristotel/screen/root/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/bloc/battom_nav_bar/navigation_cubit.dart';
import '../../core/constants/nav_bar_itm.dart';
import '../home/home_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Rgb.bodyColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Rgb.darkBlue),
        title: SvgPicture.asset(NavIcons.logo, width: 126.w, height: 32.h),
      ),
      drawer: Drawer(child: Container()),
      bottomNavigationBar: const BottomNavBar(),
      body: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          if (state.navbarItem == NavbarItem.home) {
            return const HomeScreen();
          } else if (state.navbarItem == NavbarItem.catalog) {
            return const CatalogScreen();
          } else if (state.navbarItem == NavbarItem.course) {
            return const CourseScreen();
          } else if (state.navbarItem == NavbarItem.cart) {
            return const CartScreen();
          } else if (state.navbarItem == NavbarItem.accaunt) {
            return const AccauntScreen();
          }
          return Container();
        }, 
      ),
    );
  }
}
