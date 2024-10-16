class LatestWorkoutItemModel
{
  final String title, time, calories, svg;
  final double progress;
  final void Function() onPressed;

  LatestWorkoutItemModel({
    required this.title,
    required this.time,
    required this.calories,
    required this.svg,
    required this.progress,
    required this.onPressed,
});
}