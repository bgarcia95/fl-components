import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, i) => ListTile(
          leading: Icon(
            menuOptions[i].icon,
            color: AppTheme.primaryColor,
          ),
          title: Text(menuOptions[i].title),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => const ListView1Screen(),
            // );
            // push replacement: destroys previous screens. Example: after logging into the app.
            // Navigator.push(context, route);

            Navigator.pushNamed(context, menuOptions[i].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
