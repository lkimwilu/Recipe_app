  // Recipe data model to hold recipe information.
  class Recipe {
    final String title; // Recipe name.
    final String description; // Detailed description of the recipe.
    final String imageUrl; // URL for the recipe image.

    // Constructor to initialize all the fields.
    Recipe({
      required this.title,
      required this.description,
      required this.imageUrl,
    });
  }
