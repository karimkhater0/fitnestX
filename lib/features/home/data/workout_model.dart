class WorkoutModel {
  final String name, time, svg, calories;
  final List<ItemModel> items;
  final List<List<ExerciseModel>> exercises;

  WorkoutModel({required this.name, required this.time, required this.svg, required this.calories, required this.items, required this.exercises});
}


class ItemModel {
  final String name, svg;

  ItemModel({required this.name, required this.svg});
}

class ExerciseModel {
  final String name, img, time;
  final ExerciseDescriptionModel exModel;

  ExerciseModel({
    required this.name,
    required this.img,
    required this.time,
    required this.exModel,
  });
}

class ExerciseDescriptionModel
{

  final String level, description, calories;

  final List<StepModel> steps;

  ExerciseDescriptionModel({
    required this.level,
    required this.description,
    required this.calories,
    required this.steps,
  });
}

class StepModel
{
  final String title, body;
  StepModel({required this.title, required this.body});
}