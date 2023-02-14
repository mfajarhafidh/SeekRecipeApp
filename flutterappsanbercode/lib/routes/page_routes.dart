import 'package:flutterappsanbercode/pages/home.dart';
import 'package:flutterappsanbercode/pages/recipe_details_screen.dart';
import 'package:flutterappsanbercode/utils/bottom_nav.dart';
import 'package:flutterappsanbercode/pages/login_screen.dart';
import 'package:flutterappsanbercode/pages/register_screen.dart';
import 'package:flutterappsanbercode/routes/route_name.dart';
import 'package:get/get.dart';


class PageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.registerScreen,
      page: () => const RegisterScreen(),
      ),
    GetPage(
      name: RouteName.loginScreen,
      page: () => const LoginScreen(),
      ),
    GetPage(
      name: RouteName.homeScreen,
      page: () => const HomePage(),
      ),
    GetPage(
      name: RouteName.bottomNav,
      page: () => const BottomNav(),
      ),
    GetPage(
      name: RouteName.recipeDetailsScreen,
      page: () => const RecipeDetailsScreen(),
      ),
  ];
}
