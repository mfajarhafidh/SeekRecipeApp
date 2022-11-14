import 'package:flutterappsanbercode/pages/home.dart';
import 'package:flutterappsanbercode/pages/recipe_details_screen.dart';
import 'package:flutterappsanbercode/utils/bottom_nav.dart';
import 'package:flutterappsanbercode/pages/login_screen.dart';
import 'package:flutterappsanbercode/pages/register_screen.dart';
import 'package:flutterappsanbercode/pages/recipe_details_screen.dart';
import 'package:flutterappsanbercode/routes/route_name.dart';
import 'package:get/get.dart';

import 'package:flutterappsanbercode/utils/bottom_nav.dart';

class pageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.register_screen,
      page: () => RegisterScreen(),
      ),
    GetPage(
      name: RouteName.login_screen,
      page: () => LoginScreen(),
      ),
    GetPage(
      name: RouteName.home_screen,
      page: () => HomePage(),
      ),
    GetPage(
      name: RouteName.bottom_nav,
      page: () => BottomNav(),
      ),
    GetPage(
      name: RouteName.recipe_details_screen,
      page: () => RecipeDetailsScreen(),
      ),
  ];
}
