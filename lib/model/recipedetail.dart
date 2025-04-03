import 'package:flutter/material.dart';

class RecipeDetailPage extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  final String tag;
  final String author;
  final String ingredients;
  final String directions;

  const RecipeDetailPage({
    super.key,
    required this.image,
    required this.title,
    required this.time,
    required this.tag,
    required this.author,
    required this.ingredients,
    required this.directions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, width: double.infinity, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Text("Time: $time", style: const TextStyle(fontSize: 16)),
            if (tag.isNotEmpty)
              Text("Tag: $tag", style: const TextStyle(fontSize: 16, color: Colors.green)),
            const SizedBox(height: 16),
            Text("By $author", style: const TextStyle(fontSize: 14, color: Colors.orange)),
            const SizedBox(height: 24),
            const Text("Ingredients", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(ingredients, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            const Text("Directions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(directions, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
