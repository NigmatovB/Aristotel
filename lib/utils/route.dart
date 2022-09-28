import '../../utils/imports.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/catalogue_all' :(context) => const CatalogueAllScreen(),
      '/catalogue' :(context) => const CatalogScreen(),
      '/drawer' :(context) => const DrawerPageScreen(),
      '/search' :(context) => const  SearchScreen(),
    };
  }
}