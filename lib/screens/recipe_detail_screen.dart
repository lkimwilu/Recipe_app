  import 'package:flutter/material.dart'; // Import Flutter material design library.
  import '../models/recipe.dart'; // Import the Recipe model.

  // Screen to display detailed information about a recipe.
  class RecipeDetailScreen extends StatelessWidget {
    final Recipe recipe; // Recipe data passed to the screen.

    RecipeDetailScreen({required this.recipe}); // Constructor to initialize the recipe.

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(recipe.title), // Display the recipe title in the app bar.
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0), // Add space around the content.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start.
            children: [
              Image.network(recipe.imageUrl), // Display the recipe image.
              SizedBox(height: 16), // Add vertical space.
              Text(
                recipe.title, // Display the recipe title.
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Large bold text.
              ),
              SizedBox(height: 8), // Add vertical space.
              Text(
                recipe.description, // Display the recipe description.
                style: TextStyle(fontSize: 16), // Regular-sized text.
              ),
            ],
          ),
        ),
      );
    }
  }
