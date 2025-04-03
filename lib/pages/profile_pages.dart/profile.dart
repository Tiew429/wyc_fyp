import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  
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
