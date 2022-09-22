import 'package:aristotel/ui/common_widgets/second_scaffolf.dart';
import 'package:aristotel/ui/screen/cataloge/widget/catalog_body.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SecondScaffold(
      id: 1,
      body: CatalogBody(),
    );
  }
}