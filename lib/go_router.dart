import 'package:flutter_application_1/model/recipe.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/recipedetails.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
      routes: [
        GoRoute(
          path: 'recipedetails',
          builder: (context, state) {
            final Map<String, dynamic>? extraData = state.extra as Map<String, dynamic>?;
            return RecipedetailsPage(
              recipe: extraData?['recipe'] as Recipe,
              userID: extraData?['userID'] as String,
            );
          },
        ),
      ],
    ),
  ],
);