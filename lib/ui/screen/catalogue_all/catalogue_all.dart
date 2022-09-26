import 'package:flutter/material.dart';

import '../../common_widgets/second_scaffolf.dart';
import 'widget/catalogue_all_body.dart';

class CatalogueAllScreen extends StatelessWidget {
  const CatalogueAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SecondScaffold(
      id: 1,
      body: CatalogueAllScreenBody(),
    );
  }
}