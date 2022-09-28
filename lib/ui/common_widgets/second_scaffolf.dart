// ignore_for_file: unused_local_variable, avoid_print
import '../../utils/imports.dart';

class SecondScaffold extends StatelessWidget {
  final Widget? body;
  final int? id;
  final FloatingActionButton? floatingActionButton;
  const SecondScaffold({
    Key? key,
    this.body,
    this.id,
    this.floatingActionButton,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool search = false;
    if (id == 1 || id == 2 ) search = true;
    return Scaffold(
      floatingActionButton: floatingActionButton,
      backgroundColor: Rgb.bodyColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Rgb.darkBlue),
        title: SvgPicture.asset(NavIcons.logo, width: 126.w, height: 32.h),
        actions: [
          search
              ? Padding(
                  padding: EdgeInsets.only(right: 20.0.w),
                  child: GestureDetector(
                    onTap: () {
                      id == 3 ? Navigator.pop(context) : Navigator.pushNamed(context, '/search');
                    },
                    child: Icon(
                      Icons.search,
                      size: 26.0.sp,
                      color: Rgb.grey1,
                    ),
                  ),
                )
              : Container()
        ],
        leading: GestureDetector(
          child: Icon(
            id == 2 || id == 3 ? Icons.arrow_back : Icons.menu,
            color: Rgb.darkBlue,
          ),
          onTap: () {
            id == 2 || id == 3 ? Navigator.pop(context) : Navigator.pushNamed(context, '/drawer');
          },
        ),
      ),
      body: body,
    );
  }
}