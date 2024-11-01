import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/car_details_screen.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_views/dash_board_views.dart';

class RouteManger {
  static final route = [
    GetPage(
      name: DashBoardViews.routeName,
      page: () => const DashBoardViews(),
    ),
     GetPage(
      name: CarDetailsScreen.routeName,
      page: () => const CarDetailsScreen(),
    ),
  ];
}
