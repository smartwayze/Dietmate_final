import 'package:flutter/material.dart';

class Recipe {
  final String title;
  final IconData icon;
  final List<String> ingredients;
  final List<String> steps;
  final String dietInfo;

  Recipe({
    required this.title,
    required this.icon,
    required this.ingredients,
    required this.steps,
    required this.dietInfo,
  });
}

class RecipeListScreen extends StatelessWidget {

  final List<Recipe> recipes = [
    Recipe(
      title: "Quinoa Veggie Bowl",

      icon: Icons.rice_bowl,
      ingredients: [
        "1 cup quinoa",
        "1 cucumber, chopped",
        "1 tomato, chopped",
        "1/2 cup chickpeas",
        "Lemon juice",
        "Salt & Pepper"
      ],
      steps: [
        "Boil 1 cup quinoa with 2 cups water for 15 minutes.",
        "Mix chopped veggies and boiled chickpeas.",
        "Add lemon juice, salt and pepper.",
        "Mix everything and serve cold."
      ],
      dietInfo: "Low carb, high protein, vegan.",
    ),
    Recipe(
      title: "Oats Banana Smoothie",
      icon: Icons.local_drink,
      ingredients: [
        "1 banana",
        "1/2 cup oats",
        "1 cup almond milk",
        "1 tsp honey",
        "A pinch of cinnamon"
      ],
      steps: [
        "Soak oats in almond milk for 5 minutes.",
        "Add banana, honey, and cinnamon.",
        "Blend until smooth and serve chilled."
      ],
      dietInfo: "Rich in fiber, gluten-free.",
    ),
    Recipe(
      title: "Grilled Chicken Salad",
      icon: Icons.set_meal,
      ingredients: [
        "100g grilled chicken",
        "Lettuce leaves",
        "Cherry tomatoes",
        "Cucumber slices",
        "Low-fat dressing"
      ],
      steps: [
        "Grill chicken until golden.",
        "Toss with lettuce, tomatoes & cucumber.",
        "Add dressing and serve fresh."
      ],
      dietInfo: "High protein, low fat, keto-friendly.",
    ),
    Recipe(
      title: "Tofu Stir Fry",
      icon: Icons.food_bank,
      ingredients: [
        "200g tofu",
        "Mixed bell peppers",
        "1 tbsp soy sauce",
        "1 tsp garlic paste",
        "1 tbsp olive oil"
      ],
      steps: [
        "Heat oil and sauté garlic.",
        "Add tofu and fry until golden.",
        "Add peppers and soy sauce.",
        "Cook for 5 minutes and serve."
      ],
      dietInfo: "Vegan, plant-based protein.",
    ),
    Recipe(
      title: "Avocado Toast",
      icon: Icons.breakfast_dining,
      ingredients: [
        "2 slices whole grain bread",
        "1 ripe avocado",
        "Chili flakes",
        "Lemon juice",
        "Salt"
      ],
      steps: [
        "Toast the bread.",
        "Mash avocado with lemon, salt, and chili.",
        "Spread and serve immediately."
      ],
      dietInfo: "Healthy fats, heart-friendly.",
    ),
    Recipe(
      title: "Lentil Soup",
      icon: Icons.soup_kitchen,
      ingredients: [
        "1 cup red lentils",
        "1 onion",
        "1 carrot",
        "Garlic",
        "Spices"
      ],
      steps: [
        "Boil lentils with chopped veggies.",
        "Simmer for 20 minutes.",
        "Blend for a smooth texture.",
        "Serve hot."
      ],
      dietInfo: "Iron-rich and high in fiber.",
    ),
    Recipe(
      title: "Zucchini Noodles",
      icon: Icons.restaurant,
      ingredients: [
        "2 zucchinis spiralized",
        "1 tbsp olive oil",
        "Cherry tomatoes",
        "Salt, basil"
      ],
      steps: [
        "Sauté spiralized zucchini.",
        "Add tomatoes and cook briefly.",
        "Add herbs and serve."
      ],
      dietInfo: "Low-carb pasta option.",
    ),
    Recipe(
      title: "Yogurt Parfait",
      icon: Icons.icecream,
      ingredients: [
        "1 cup Greek yogurt",
        "Granola",
        "Berries",
        "Honey"
      ],
      steps: [
        "Layer yogurt, granola, berries.",
        "Drizzle with honey.",
        "Serve chilled."
      ],
      dietInfo: "Probiotic and protein-rich.",
    ),
    Recipe(
      title: "Vegetable Soup",
      icon: Icons.bubble_chart,
      ingredients: [
        "1 onion",
        "Mixed vegetables",
        "Water or broth",
        "Salt, pepper, herbs"
      ],
      steps: [
        "Sauté onion and vegetables.",
        "Add broth and simmer.",
        "Garnish and serve hot."
      ],
      dietInfo: "Low-calorie, high in nutrients.",
    ),
    Recipe(
      title: "Paneer Wrap",
      icon: Icons.wrap_text,
      ingredients: [
        "Whole wheat wrap",
        "Paneer cubes",
        "Lettuce, tomato",
        "Low-fat spread"
      ],
      steps: [
        "Spread sauce on wrap.",
        "Add paneer and veggies.",
        "Roll tightly and grill."
      ],
      dietInfo: "High protein, vegetarian option.",
    ),
    Recipe(
      title: "Chia Pudding",
      icon: Icons.cake_outlined,
      ingredients: [
        "1/4 cup chia seeds",
        "1 cup almond milk",
        "Honey",
        "Vanilla"
      ],
      steps: [
        "Mix ingredients in a jar.",
        "Refrigerate overnight.",
        "Top with fruits and nuts."
      ],
      dietInfo: "Rich in omega-3 & fiber.",
    ),
    Recipe(
      title: "Egg White Omelet",
      icon: Icons.egg,
      ingredients: [
        "3 egg whites",
        "Spinach, tomato",
        "Salt, pepper"
      ],
      steps: [
        "Beat egg whites.",
        "Add veggies.",
        "Cook both sides on pan.",
        "Serve hot."
      ],
      dietInfo: "Low fat, high protein.",
    ),
    Recipe(
      title: "Stuffed Peppers",
      icon: Icons.local_pizza,
      ingredients: [
        "2 bell peppers",
        "Boiled rice",
        "Vegetables",
        "Low-fat cheese"
      ],
      steps: [
        "Cut and clean peppers.",
        "Fill with rice & veggie mix.",
        "Top with cheese and bake."
      ],
      dietInfo: "Wholesome & filling meal.",
    ),
    Recipe(
      title: "Fruit Mint Salad",
      icon: Icons.grass,
      ingredients: [
        "Mixed fruits",
        "Mint leaves",
        "Lemon juice"
      ],
      steps: [
        "Chop fruits.",
        "Add mint and lemon.",
        "Mix and chill before serving."
      ],
      dietInfo: "Refreshing and vitamin-rich.",
    ),
    Recipe(
      title: "Cauliflower Rice",
      icon: Icons.no_meals,
      ingredients: [
        "1 cauliflower",
        "Olive oil",
        "Spices"
      ],
      steps: [
        "Grate cauliflower.",
        "Cook in oil with spices.",
        "Serve as rice substitute."
      ],
      dietInfo: "Keto-friendly, low calorie.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Recipe Preparation Screen'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: Icon(recipe.icon, size: 36, color: Colors.green.shade700),
              title: Text(recipe.title),
              subtitle: Text(recipe.dietInfo),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => RecipeDetailScreen(recipe: recipe)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: Text(recipe.title),
        backgroundColor: Colors.green.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Icon(recipe.icon, size: 100, color: Colors.green.shade800),
            const SizedBox(height: 16),
            Text("Ingredients", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 6),
            ...recipe.ingredients.map((i) => Text("• $i")),
            const SizedBox(height: 20),
            Text("Steps", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 6),
            ...recipe.steps.map((s) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text("➡️ $s"),
            )),
            const SizedBox(height: 20),
            Text("Diet Info", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 4),
            Text(recipe.dietInfo),
          ],
        ),
      ),
    );
  }
}
