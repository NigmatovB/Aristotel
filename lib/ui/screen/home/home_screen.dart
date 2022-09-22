import 'package:aristotel/ui/common_widgets/second_scaffolf.dart';
import 'package:aristotel/ui/screen/home/widget/home_body.dart';
import 'package:flutter/material.dart';

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
