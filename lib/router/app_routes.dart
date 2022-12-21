import 'package:flutter/material.dart';

import '../screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: delete home
    MenuOption(
      route: 'home',
      title: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      route: 'listview1',
      title: 'List View Type 1',
      screen: const ListView1Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'listview2',
      title: 'List View Type 2',
      screen: const ListView2Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'alert',
      title: 'Alerts',
      screen: const AlertScreen(),
      icon: Icons.add_alert_outlined,
    ),
    MenuOption(
      route: 'card',
      title: 'Cards',
      screen: const CardScreen(),
      icon: Icons.credit_card,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listview1': (context) => const ListView1Screen(),
    'listview2': (context) => const ListView2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print(settings);

    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
