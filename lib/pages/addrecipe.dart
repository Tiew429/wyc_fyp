import 'package:flutter/material.dart';

class AddrecipePage extends StatelessWidget {
  const AddrecipePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Recipe'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: const Center(
        child: Text(
          'This is the Add Recipe Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
