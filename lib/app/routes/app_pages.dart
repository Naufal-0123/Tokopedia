import 'package:get/get.dart';

import 'package:tokopedia/app/modules/Detail/bindings/detail_binding.dart';
import 'package:tokopedia/app/modules/Detail/views/detail_view.dart';
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
import 'package:tokopedia/app/modules/createSlider/bindings/create_slider_binding.dart';
import 'package:tokopedia/app/modules/createSlider/views/create_slider_view.dart';
import 'package:tokopedia/app/modules/home/bindings/home_binding.dart';
import 'package:tokopedia/app/modules/home/views/home_view.dart';
import 'package:tokopedia/app/modules/homeAdmin/bindings/home_admin_binding.dart';
import 'package:tokopedia/app/modules/homeAdmin/views/home_admin_view.dart';
import 'package:tokopedia/app/modules/phone/bindings/phone_binding.dart';
import 'package:tokopedia/app/modules/phone/views/phone_view.dart';
import 'package:tokopedia/app/modules/sliderAdmin/bindings/slider_admin_binding.dart';
import 'package:tokopedia/app/modules/sliderAdmin/views/slider_admin_view.dart';
import 'package:tokopedia/app/modules/updateSlider/bindings/update_slider_binding.dart';
import 'package:tokopedia/app/modules/updateSlider/views/update_slider_view.dart';
import 'package:tokopedia/app/modules/verifyOTP/bindings/verify_o_t_p_binding.dart';
import 'package:tokopedia/app/modules/verifyOTP/views/verify_o_t_p_view.dart';

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
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.PHONE,
      page: () => PhoneView(),
      binding: PhoneBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_O_T_P,
      page: () => VerifyOTPView(),
      binding: VerifyOTPBinding(),
    ),
    GetPage(
      name: _Paths.HOME_ADMIN,
      page: () => HomeAdminView(),
      binding: HomeAdminBinding(),
    ),
    GetPage(
      name: _Paths.SLIDER_ADMIN,
      page: () => SliderAdminView(),
      binding: SliderAdminBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_SLIDER,
      page: () => CreateSliderView(),
      binding: CreateSliderBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_SLIDER,
      page: () => UpdateSliderView(),
      binding: UpdateSliderBinding(),
    ),
  ];
}
