import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final formKey = GlobalKey<FormState>();
  String _enteredPlace = "";

  savePlace() {
    final isValid = formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Place"),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        color: Theme.of(context).colorScheme.onSecondary,
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  maxLength: 50,
                  decoration: const InputDecoration(label: Text('Enter Place')),
                  validator: (value) {
                    final notValid = value == null ||
                        value.trim().isEmpty ||
                        value.trim().length == 1 ||
                        value.trim().length > 50;
                    return notValid
                        ? "Enter valid characters between 1 to 50"
                        : null;
                  },
                ),
                ElevatedButton(
                    onPressed: savePlace, child: const Text('Save Item'))
              ],
            )),
      ),
    );
  }
}
