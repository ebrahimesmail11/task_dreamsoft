import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_desktop_views/dashboard_desktop_views.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/dashboard_mobile_views.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_tablet_views/dashboard_tablet_views.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_views/widgets/adaptive_layout_widget.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_views/widgets/custom_drawer.dart';

class DashBoardViews extends StatefulWidget {
  const DashBoardViews({super.key});
  static const routeName = '/dashBoardViews';

  @override
  State<DashBoardViews> createState() => _DashBoardViewsState();
}

class _DashBoardViewsState extends State<DashBoardViews> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              backgroundColor: context.colors.slateBlue,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                icon: SvgPicture.asset(AppImages.menu,
                   ),
                // icon: Icon(Icons.menu, color: context.colors.textColor),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppImages.notification,),
                  
                ),
              ],
            )
          : null,
      backgroundColor: context.colors.mainColor,
      drawer:
          MediaQuery.of(context).size.width < 800 ? const CustomDrawer() : null,
     body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileViews(),
        tabletLayout: (context) => const DashboardTabletViews(),
        desktopLayout: (context) => const DashboardDesktopViews(),
      ),
    );
  }
}
