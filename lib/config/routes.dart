import 'package:flutter/material.dart';
import 'package:flutter_tutorial/GetX/Views/GetxHome.dart';
import 'package:flutter_tutorial/Provider/Views/ProviderHome.dart';
import 'package:flutter_tutorial/views/home2_page.dart';
import 'package:flutter_tutorial/views/home_page.dart';
import 'package:flutter_tutorial/views/login_page.dart';

const String baseRoute='/';
const String homeRoute='/home';
const String home1Route='/home1';
const String providerRoute='/provider';
const String getXRoute='/getx';
const String loginRoute='/login';



























class RouterManager {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
        case home1Route:
        return MaterialPageRoute(builder: (_) => const Home1Page());
        case providerRoute:
        return MaterialPageRoute(builder: (_) => const ProviderHome());
        case getXRoute:
        return MaterialPageRoute(builder: (_) => const GetxHome());
      default:
        return MaterialPageRoute(builder: (_) => const LoginPage());
    }
  }

  // Navigate to a specific route
  static void navigateTo(String routeName,{Object? arguments}) {
    navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }

  // Pop the current page
  static void pop() {
    navigatorKey.currentState?.pop();
  }
}