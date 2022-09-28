import '../../../utils/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SecondScaffold(
      id: 0,
      body: HomeBody(),
    );
  }
}
