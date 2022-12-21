import 'package:flutter/material.dart';

// not a constant widget because it will not be created on build time but runtime.

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  final games = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Type 1 ListView'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ...games
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
