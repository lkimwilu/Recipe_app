  import 'package:flutter/material.dart'; // Import Flutter material design library.
  import '../models/recipe.dart'; // Import the Recipe model.
  import '../widgets/recipe_card.dart'; // Import the custom RecipeCard widget.

  // HomeScreen widget to display the list of recipes.
  class HomeScreen extends StatelessWidget {
    final List<Recipe> recipes; // List of recipes passed from the main app.

    HomeScreen({required this.recipes}); // Constructor to initialize the recipes.

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Recipe App'), // Title in the app bar.
        ),
        body: ListView.builder(
          itemCount: recipes.length, // Number of items in the list.
          itemBuilder: (context, index) {
            final recipe = recipes[index]; // Get each recipe by its index.
            return RecipeCard(recipe: recipe); // Use RecipeCard to display the recipe.
          },
        ),
      );
    }
  }
