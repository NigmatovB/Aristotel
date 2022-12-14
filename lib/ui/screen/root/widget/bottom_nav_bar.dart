import '../../../../utils/imports.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return ClipRRect(
          borderRadius:  BorderRadius.only(
            topLeft: Radius.circular(20.0.sp),
            topRight: Radius.circular(20.0.sp),
          ),
          child: BottomNavigationBar(
            fixedColor: Rgb.darkBlue,
            iconSize: 24.sp,
            unselectedFontSize: 11.sp,
            selectedFontSize: 11.sp,
            currentIndex: state.index,
            unselectedItemColor: Rgb.grey1,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (index) => onTap(index, context),
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(NavIcons.home),
                  label: 'Главная',
                  activeIcon: SvgPicture.asset(NavIcons.home2)),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(NavIcons.book),
                  label: 'Каталог',
                  activeIcon: SvgPicture.asset(NavIcons.book2)),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(NavIcons.rocket),
                  label: 'Мои курсы',
                  activeIcon: SvgPicture.asset(NavIcons.rocket2)),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(NavIcons.cart),
                  label: 'Корзина',
                  activeIcon: SvgPicture.asset(NavIcons.cart2)),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(NavIcons.profile),
                  label: 'Аккаунт',
                  activeIcon: SvgPicture.asset(NavIcons.profile2)),
            ],
          ),
        );
      },
    );
  }

  onTap(index, context) {
    if (index == 0) {
      BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.home);
    } else if (index == 1) {
      BlocProvider.of<NavigationCubit>(context)
          .getNavBarItem(NavbarItem.catalog);
    } else if (index == 2) {
      BlocProvider.of<NavigationCubit>(context)
          .getNavBarItem(NavbarItem.course);
    } else if (index == 3) {
      BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.cart);
    } else if (index == 4) {
      BlocProvider.of<NavigationCubit>(context)
          .getNavBarItem(NavbarItem.accaunt);
    }
  }
}