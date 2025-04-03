import 'package:flutter/material.dart';

class AddrecipePage extends StatelessWidget {
  const AddrecipePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: const Center(
        child: Text(
          'This is the new page.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
