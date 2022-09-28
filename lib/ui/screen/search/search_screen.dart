import '../../../utils/imports.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SecondScaffold(
      id: 3,
      body: SearchBodyScreen(),
    );
  }
}