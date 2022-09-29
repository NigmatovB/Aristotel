import '../../../../utils/imports.dart';

class CatalogBody extends StatelessWidget {
  const CatalogBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ContainerWidget(
                width: 345.w,
                height: 140.h,
                top: 16.h,
                left: 16.w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const Card_4(
                      text: "Бизнес и аналитика",
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ContainerWidget(
                width: 328.w,
                height: 510.h,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Card2();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
