import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/recipe.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Our Latest Recipes",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
               _buildRecipeCard(
                  context,
                  image: 'assets/images/Takoyaki.jpg',
                  time: '25 min.',
                  tag: 'Vegetarian',
                  title: 'Easy and fluffy apple cake',
                  author: 'Marco Hartz',
                ),
                _buildRecipeCard(
                  context,
                  image: 'assets/images/Takoyaki.jpg',
                  time: '10 min.',
                  tag: '',
                  title: 'Air fryer camembert',
                  author: 'Marco Hartz',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeCard(
    BuildContext context, {
    required String image,
    required String time,
    required String tag,
    required String title,
    required String author,
  }) {
    return GestureDetector(
      onTap: () {
        context.go('/recipedetails', 
          extra: {
            'recipe': Recipe(
              image: image,
              title: title,
              time: time,
              tag: tag,
              author: author,
              ingredients: "1 cup flour\n2 eggs\n1/2 cup sugar",
              steps: "1. Mix ingredients.\n2. Bake for 25 minutes.",
            ),
            'userID': "jiajun0323",
          },
        );
      },
      child: Container(
        width: 220,
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(image, height: 140, width: 220, fit: BoxFit.cover),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(time, style: const TextStyle(fontSize: 12)),
                  ),
                ),
                if (tag.isNotEmpty)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(tag, style: const TextStyle(fontSize: 12, color: Colors.green)),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            const SizedBox(height: 4),
            Row(
              children: [
                const CircleAvatar(radius: 10, backgroundImage: AssetImage('assets/images/Takoyaki.jpg')), // replace with author photo if needed
                const SizedBox(width: 6),
                Text(author, style: const TextStyle(fontSize: 12, color: Colors.orange)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
