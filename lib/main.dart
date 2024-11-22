  import 'package:flutter/material.dart'; // Import Flutter material design library.
  import 'screens/home_screen.dart'; // Import the HomeScreen.
  import 'models/recipe.dart'; // Import the Recipe model.

  void main() {
    runApp(RecipeApp()); // Start the app by running the RecipeApp widget.
  }

  // The main RecipeApp widget.
  class RecipeApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      // Define a list of sample recipes.
      final List<Recipe> recipes = [
        Recipe(
          title: 'Spaghetti Bolognese', // Recipe name.
          description: 'A hearty pasta dish with spaghetti and a rich meat sauce made from tomatoes, ground meat, and herbs, often topped with Parmesan cheese', // Short description.
          imageUrl: 'https://media.istockphoto.com/id/1407982559/photo/spaghetti-or-linguine-with-meat-and-tomato-sauce-bolognese-on-a-black-plate-and-dark.jpg?s=612x612&w=0&k=20&c=bbJzS2g5hpTtXqLqGVkKmL71HyAmoWoxiCtEDzVGPUI=', // Example image URL.
        ),
        Recipe(
          title: 'Chicken Curry', // Recipe name.
          description: 'A spiced dish with chicken cooked in a rich, aromatic sauce.', // Short description.
          imageUrl: 'https://media.istockphoto.com/id/2158542549/photo/indian-spiced-fish-curry-salmon-masala-top-view.jpg?s=612x612&w=0&k=20&c=o7OPBKFFiIwHz8ZBfk_AE14RvEbpcSZYmN6Bh52a6p8=', // Example image URL.
        ),
      ];

      return MaterialApp(
        title: 'Recipe App', // App title shown in the device task manager.
        theme: ThemeData(primarySwatch: Colors.blue), // Set a blue theme.
        home: HomeScreen(recipes: recipes), // Set HomeScreen as the first screen.
      );
    }
  }
