  import 'package:flutter/material.dart'; // Import Flutter material design library.
  import '../models/recipe.dart'; // Import the Recipe model.
  import 'package:recipe_app/screens/recipe_detail_screen.dart'; // Adjust path if necessary


  // Custom widget to display a recipe card.
  class RecipeCard extends StatelessWidget {
    final Recipe recipe; // Recipe data passed to the card.

    RecipeCard({required this.recipe}); // Constructor to initialize the recipe.

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(8.0), // Add space around the card.
        child: Card(
          elevation: 4, // Add shadow for a lifted appearance.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start.
            children: [
              Image.network(recipe.imageUrl), // Display the recipe image from the URL.
              Padding(
                padding: const EdgeInsets.all(8.0), // Add space inside the card.
                child: Text(
                  recipe.title, // Display the recipe title.
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Bold and large text.
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0), // Add horizontal space.
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the RecipeDetailScreen when the button is pressed.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeDetailScreen(recipe: recipe),
                      ),
                    );
                  },
                  child: Text('View Details'), // Button label.
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
