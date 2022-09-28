import '../../../../utils/imports.dart';



class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondScaffold(
      id: 1,
      body: const CatalogBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/catalogue_all');
        },
        shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.r))
        ),
        backgroundColor: Rgb.darkBlue,
        child: const Icon(Icons.keyboard_double_arrow_up),
      ),
    );
  }
}