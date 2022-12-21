import 'package:flutter/material.dart';

// not a constant widget because it will not be created on build time but runtime.

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({super.key});

  final games = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Type 2 ListView'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        // .separated or .builder creates a lazy loading list
        child: ListView.separated(
          itemCount: games.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(games[i]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            onTap: () {
              final game = games[i];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ),
      ),
    );
  }
}
