import '../../../../utils/imports.dart';


class CourseBody extends StatelessWidget {
  const CourseBody({super.key});

  // SingleChildScrollView

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.center,
        child: ContainerWidget(
          width: 328.w,
          height: 705.h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWid(
                  text: "Мои курсы",
                  fontSize: 24.sp,
                  top: 12.h,
                  fontWeight: FontWeight.bold,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ContainerWidget(
                    width: 555.w,
                    height: 98.h,
                    top: 16.h,
                    bottom: 16.h,
                    color: Rgb.White,
                    radius: 15.r,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return  Cours_count_container(
                          count: cours_count[index],
                          divider:  cours_count.length - 1 != index ? true : false,
                          typeCours: cours_name[index],
                        );
                      },
                    ),
                  ),
                ),
                ContainerWidget(
                  width: 328.w,
                  height: 530.h,
                  alignment: Alignment.bottomCenter,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const Card2();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
