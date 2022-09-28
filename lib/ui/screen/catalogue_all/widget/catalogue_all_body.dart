import '../../../../utils/imports.dart';

class CatalogueAllScreenBody extends StatelessWidget {
  const CatalogueAllScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: ContainerWidget(
          padding: 16.w,
          width: double.infinity,
          height: 730.h,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.w,
                // childAspectRatio: 3 / 2.2,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: 20,
              itemBuilder: (BuildContext ctx, index) {
                return const Card_3(
                  text: "Менеджмент",
                );
              }),
        ),
      ),
    );
  }
}
