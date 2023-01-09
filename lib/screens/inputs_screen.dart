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
              initialValue: '',
              textCapitalization: TextCapitalization.words,
              onChanged: (value) => print(value),
              validator: (value) {
                if (value == null) return 'This field is required';
                return value.length < 3 ? 'Min 3 charactees' : null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                hintText: 'Username',
                labelText: 'Name',
                helperText: 'Only letters',
                // counterText: '3 characters',
                // prefixIcon: Icon(Icons.verified_user_outlined),
                suffixIcon: Icon(Icons.group_outlined),
                icon: Icon(Icons.assignment_ind_outlined),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ), // works as a listview but instead of many widgets we just have one
    );
  }
}
