import 'package:get/get.dart';

import 'package:tokopedia/app/modules/Forgotpw/bindings/forgotpw_binding.dart';
import 'package:tokopedia/app/modules/Forgotpw/views/forgotpw_view.dart';
import 'package:tokopedia/app/modules/Login/bindings/login_binding.dart';
import 'package:tokopedia/app/modules/Login/views/login_view.dart';
import 'package:tokopedia/app/modules/Register/bindings/register_binding.dart';
import 'package:tokopedia/app/modules/Register/views/register_view.dart';
import 'package:tokopedia/app/modules/SplashScreen/bindings/splash_screen_binding.dart';
import 'package:tokopedia/app/modules/SplashScreen/views/splash_screen_view.dart';
import 'package:tokopedia/app/modules/Verify/bindings/verify_binding.dart';
import 'package:tokopedia/app/modules/Verify/views/verify_view.dart';
import 'package:tokopedia/app/modules/home/bindings/home_binding.dart';
import 'package:tokopedia/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPW,
      page: () => ForgotpwView(),
      binding: ForgotpwBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY,
      page: () => VerifyView(),
      binding: VerifyBinding(),
    ),
  ];
}
