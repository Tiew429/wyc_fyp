import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/recipe.dart';

class RecipedetailsPage extends StatefulWidget {
  final Recipe recipe;
  final String userID;

  const RecipedetailsPage({
    super.key,
    required this.recipe,
    required this.userID,
  });

  @override
  State<RecipedetailsPage> createState() => _RecipedetailsPageState();
}

class _RecipedetailsPageState extends State<RecipedetailsPage> {
  late Recipe recipe;
  late String userID;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    recipe = widget.recipe;
    userID = widget.userID;
    isLiked = recipe.likes.contains(userID);
  }

  void _onLikeButtonPressed() {
    setState(() {
      if (isLiked) {
        recipe.removeLike(userID);
        print(recipe.likes);
      } else {
        recipe.addLike(userID);
        print(recipe.likes);
      }
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(recipe.image, width: double.infinity, fit: BoxFit.cover),
                Positioned(
                  top: 16,
                  right: 16,
                  child: IconButton(
                    onPressed: _onLikeButtonPressed,
                    icon: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked ? Colors.red : null,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text("Time: ${recipe.time}", style: const TextStyle(fontSize: 16)),
            if (recipe.tag.isNotEmpty)
              Text("Tag: ${recipe.tag}", style: const TextStyle(fontSize: 16, color: Colors.green)),
            const SizedBox(height: 16),
            Text("By ${recipe.author}", style: const TextStyle(fontSize: 14, color: Colors.orange)),
            const SizedBox(height: 24),
            const Text("Ingredients", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(recipe.ingredients, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            const Text("Directions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(recipe.steps, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}