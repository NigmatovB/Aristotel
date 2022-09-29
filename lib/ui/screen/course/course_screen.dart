import '../../../../utils/imports.dart';


class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const  SecondScaffold(
      id: 1,
      body: CourseBody(),
    );
  }
}