import '../../../utils/imports.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Rgb.bodyColor,
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
