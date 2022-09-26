import 'package:aristotel/ui/common_widgets/container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/card_3.dart';

class CatalogueAllScreenBody extends StatelessWidget {
  const CatalogueAllScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: ContainerWidget(
          padding: 16.w,
          width: double.infinity,
          height: 685.h,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.w,
                // childAspectRatio: 3 / 2.2,
                childAspectRatio: 0.97,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: 40,
              itemBuilder: (BuildContext ctx, index) {
                return Card_3( );
              }),
        ),
      ),
    );
  }
}

