import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              initialValue: 'Brayan Garcia',
              textCapitalization: TextCapitalization.words,
              onChanged: (value) => print(value),
            ),
          ],
        ),
      ), // works as a listview but instead of many widgets we just have one
    );
  }
}
