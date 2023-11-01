import 'package:flutter/cupertino.dart';
import 'package:login_app/view/home_screen.dart';
import 'package:login_app/view/login_screen.dart';
import 'package:login_app/view/splash_screen.dart';

Map<String, WidgetBuilder> screen_routes = {
  '/': (context) => const SplashScreen(),
  'login':(context) => const LoginScreen(),
  'home':(context) => const HomeScreen(),
};
