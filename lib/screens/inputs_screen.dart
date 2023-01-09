import 'package:fl_components/widgets/widgets.dart';
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
          children: const [
            CustomInputField(
              labelText: 'Name',
              hintText: 'User name',
            ),
            SizedBox(height: 30),
            CustomInputField(
              labelText: 'Lastname',
              hintText: 'User last name',
            ),
            SizedBox(height: 30),
            CustomInputField(
              labelText: 'Email',
              hintText: 'User email',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 30),
            CustomInputField(
              labelText: 'Password',
              hintText: 'User password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            SizedBox(height: 30),
          ],
        ),
      ), // works as a listview but instead of many widgets we just have one
    );
  }
}
