class Recipe {
  final int id;
  final int catergoryId;
  final String name;
  final List<String> steps;
  final List<String> ingridients;
  final int duration;
  final int servings;
  final String? image;

  Recipe({
    required this.id, required this.catergoryId, required this.name, required this.steps, required this.ingridients,
    required this.duration,required this.servings, this.image
  });
}