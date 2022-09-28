import '../../../../utils/imports.dart';

class CatalogueAllScreen extends StatelessWidget {
  const CatalogueAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SecondScaffold(
      id: 2,
      body: CatalogueAllScreenBody(),
    );
  }
}