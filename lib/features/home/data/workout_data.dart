import 'package:fitness_app/core/utils/assets.dart';
import 'package:fitness_app/features/home/data/workout_model.dart';

class WorkoutData
{
  static WorkoutModel fullBody = WorkoutModel(
      name: 'Fullbody Workout',
      time: '32',
      svg: AssetsData.fullBody,
      calories: '320',
      items: <ItemModel>[
        ItemModel(
            name: 'Barbell',
            svg: AssetsData.barbel,
        ),
        ItemModel(
            name: 'Skipping Rope',
            svg: AssetsData.skippingRope,
        ),
        ItemModel(
          name: 'Bottle 1 Litre',
          svg: AssetsData.waterBottle,
        ),
        ItemModel(
          name: 'Barbell',
          svg: AssetsData.barbel,
        ),
        ItemModel(
          name: 'Barbell',
          svg: AssetsData.barbel,
        ),
      ],
      exercises: [
      [
        ExerciseData.warmUp,
        ExerciseData.jumpingJack,
        ExerciseData.skipping,
        ExerciseData.squats,
        ExerciseData.armRaises,
        ExerciseData.restDrink,
      ],
      [
        ExerciseData.inclinePushUps,
        ExerciseData.pushUps,
        ExerciseData.skipping,
      ],
    ],
  );

  static WorkoutModel lowerBody = WorkoutModel(
    name: 'Lowerbody Workout',
    time: '42',
    svg: AssetsData.lowerBody,
    calories: '520',
    items: <ItemModel>[
      ItemModel(
        name: 'Barbell',
        svg: AssetsData.barbel,
      ),
      ItemModel(
        name: 'Skipping Rope',
        svg: AssetsData.skippingRope,
      ),
      ItemModel(
        name: 'Bottle 1 Litre',
        svg: AssetsData.waterBottle,
      ),
      ItemModel(
        name: 'Barbell',
        svg: AssetsData.barbel,
      ),
      ItemModel(
        name: 'Barbell',
        svg: AssetsData.barbel,
      ),
    ],
    exercises: [
      [
        ExerciseData.warmUp,
        ExerciseData.jumpingJack,
        ExerciseData.skipping,
        ExerciseData.squats,
        ExerciseData.armRaises,
        ExerciseData.restDrink,
      ],
      [
        ExerciseData.inclinePushUps,
        ExerciseData.pushUps,
        ExerciseData.skipping,
      ],
    ],
  );

  static WorkoutModel ab = WorkoutModel(
    name: 'AB Workout',
    time: '29',
    svg: AssetsData.ab,
    calories: '420',
    items: <ItemModel>[
      ItemModel(
        name: 'Barbell',
        svg: AssetsData.barbel,
      ),
      ItemModel(
        name: 'Skipping Rope',
        svg: AssetsData.skippingRope,
      ),
      ItemModel(
        name: 'Bottle 1 Litre',
        svg: AssetsData.waterBottle,
      ),
      ItemModel(
        name: 'Barbell',
        svg: AssetsData.barbel,
      ),
      ItemModel(
        name: 'Barbell',
        svg: AssetsData.barbel,
      ),
    ],
    exercises: [
      [
        ExerciseData.warmUp,
        ExerciseData.jumpingJack,
        ExerciseData.skipping,
        ExerciseData.squats,
        ExerciseData.armRaises,
        ExerciseData.restDrink,
      ],
      [
        ExerciseData.inclinePushUps,
        ExerciseData.pushUps,
        ExerciseData.skipping,
      ],
    ],
  );

}

class ExerciseData
{
  static ExerciseModel warmUp = ExerciseModel(
    name: 'Warm Up',
    img: AssetsData.warmUp,
    time: '05:00',
    exModel: ExerciseDescriptionData.warmUp,
  );

  static ExerciseModel jumpingJack = ExerciseModel(
      name: 'Jumping Jack',
      img: AssetsData.jumpingJack,
      time: '12x',
      exModel: ExerciseDescriptionData.jumpingJack
  );

  static ExerciseModel skipping = ExerciseModel(
    name: 'Skipping',
    img: AssetsData.skipping,
    time: '15x',
    exModel: ExerciseDescriptionData.skipping
  );

  static ExerciseModel squats = ExerciseModel(
    name: 'Squats',
    img: AssetsData.squats,
    time: '20x',
    exModel: ExerciseDescriptionData.squats
  );

  static ExerciseModel armRaises = ExerciseModel(
    name: 'Arm Raises',
    img: AssetsData.armRaises,
    time: '00:53',
    exModel: ExerciseDescriptionData.armRaises
  );

  static ExerciseModel restDrink = ExerciseModel(
    name: 'Rest and Drink',
    img: AssetsData.restDrink,
    time: '02:00',
    exModel: ExerciseDescriptionData.restDrink
  );

  static ExerciseModel inclinePushUps = ExerciseModel(
    name: 'Incline Push-Ups',
    img: AssetsData.inclinePushUps,
    time: '12x',
    exModel: ExerciseDescriptionData.inclinePushUps
  );

  static ExerciseModel pushUps = ExerciseModel(
    name: 'Push-Ups',
    img: AssetsData.pushUps,
    time: '15x',
    exModel: ExerciseDescriptionData.pushUps,
  );

}

class ExerciseDescriptionData
{
  static ExerciseDescriptionModel warmUp = ExerciseDescriptionModel(
      level: 'easy',
      description: 'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide Read More...',
      calories: '390',
      steps: [
        StepModel(
            title: 'Spread Your Arms',
            body: '''To make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.''',
        ),
        StepModel(
          title: 'Rest at The Toe',
          body: 'The basis of this movement is jumping. Now, what needs to be considered is that you have to use the tips of your feet',
        ),
        StepModel(
          title: 'Adjust Foot Movement',
          body: 'Jumping Jack is not just an ordinary jump. But, you also have to pay close attention to leg movements.',
        ),
        StepModel(
          title: 'Clapping Both Hands',
          body: 'This cannot be taken lightly. You see, without realizing it, the clapping of your hands helps you to keep your rhythm while doing the Jumping Jack',
        ),
      ],
  );

  static ExerciseDescriptionModel jumpingJack = ExerciseDescriptionModel(

    level: 'easy',
    description: 'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide Read More...',
    calories: '390',
    steps: [
      StepModel(
        title: 'Spread Your Arms',
        body: '''To make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.''',
      ),
      StepModel(
        title: 'Rest at The Toe',
        body: 'The basis of this movement is jumping. Now, what needs to be considered is that you have to use the tips of your feet',
      ),
      StepModel(
        title: 'Adjust Foot Movement',
        body: 'Jumping Jack is not just an ordinary jump. But, you also have to pay close attention to leg movements.',
      ),
      StepModel(
        title: 'Clapping Both Hands',
        body: 'This cannot be taken lightly. You see, without realizing it, the clapping of your hands helps you to keep your rhythm while doing the Jumping Jack',
      ),
    ],
  );

  static ExerciseDescriptionModel skipping = ExerciseDescriptionModel(

    level: 'easy',
    description: 'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide Read More...',
    calories: '390',
    steps: [
      StepModel(
        title: 'Spread Your Arms',
        body: '''To make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.''',
      ),
      StepModel(
        title: 'Rest at The Toe',
        body: 'The basis of this movement is jumping. Now, what needs to be considered is that you have to use the tips of your feet',
      ),
      StepModel(
        title: 'Adjust Foot Movement',
        body: 'Jumping Jack is not just an ordinary jump. But, you also have to pay close attention to leg movements.',
      ),
      StepModel(
        title: 'Clapping Both Hands',
        body: 'This cannot be taken lightly. You see, without realizing it, the clapping of your hands helps you to keep your rhythm while doing the Jumping Jack',
      ),
    ],
  );

  static ExerciseDescriptionModel squats = ExerciseDescriptionModel(
    level: 'easy',
    description: 'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide Read More...',
    calories: '390',
    steps: [
      StepModel(
        title: 'Spread Your Arms',
        body: '''To make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.''',
      ),
      StepModel(
        title: 'Rest at The Toe',
        body: 'The basis of this movement is jumping. Now, what needs to be considered is that you have to use the tips of your feet',
      ),
      StepModel(
        title: 'Adjust Foot Movement',
        body: 'Jumping Jack is not just an ordinary jump. But, you also have to pay close attention to leg movements.',
      ),
      StepModel(
        title: 'Clapping Both Hands',
        body: 'This cannot be taken lightly. You see, without realizing it, the clapping of your hands helps you to keep your rhythm while doing the Jumping Jack',
      ),
    ],
  );

  static ExerciseDescriptionModel armRaises = ExerciseDescriptionModel(
    level: 'easy',
    description: 'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide Read More...',
    calories: '390',
    steps: [
      StepModel(
        title: 'Spread Your Arms',
        body: '''To make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.''',
      ),
      StepModel(
        title: 'Rest at The Toe',
        body: 'The basis of this movement is jumping. Now, what needs to be considered is that you have to use the tips of your feet',
      ),
      StepModel(
        title: 'Adjust Foot Movement',
        body: 'Jumping Jack is not just an ordinary jump. But, you also have to pay close attention to leg movements.',
      ),
      StepModel(
        title: 'Clapping Both Hands',
        body: 'This cannot be taken lightly. You see, without realizing it, the clapping of your hands helps you to keep your rhythm while doing the Jumping Jack',
      ),
    ],
  );

  static ExerciseDescriptionModel restDrink = ExerciseDescriptionModel(
    level: 'easy',
    description: 'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide Read More...',
    calories: '390',
    steps: [
      StepModel(
        title: 'Spread Your Arms',
        body: '''To make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.''',
      ),
      StepModel(
        title: 'Rest at The Toe',
        body: 'The basis of this movement is jumping. Now, what needs to be considered is that you have to use the tips of your feet',
      ),
      StepModel(
        title: 'Adjust Foot Movement',
        body: 'Jumping Jack is not just an ordinary jump. But, you also have to pay close attention to leg movements.',
      ),
      StepModel(
        title: 'Clapping Both Hands',
        body: 'This cannot be taken lightly. You see, without realizing it, the clapping of your hands helps you to keep your rhythm while doing the Jumping Jack',
      ),
    ],
  );

  static ExerciseDescriptionModel inclinePushUps = ExerciseDescriptionModel(
    level: 'easy',
    description: 'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide Read More...',
    calories: '390',
    steps: [
      StepModel(
        title: 'Spread Your Arms',
        body: '''To make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.''',
      ),
      StepModel(
        title: 'Rest at The Toe',
        body: 'The basis of this movement is jumping. Now, what needs to be considered is that you have to use the tips of your feet',
      ),
      StepModel(
        title: 'Adjust Foot Movement',
        body: 'Jumping Jack is not just an ordinary jump. But, you also have to pay close attention to leg movements.',
      ),
      StepModel(
        title: 'Clapping Both Hands',
        body: 'This cannot be taken lightly. You see, without realizing it, the clapping of your hands helps you to keep your rhythm while doing the Jumping Jack',
      ),
    ],
  );

  static ExerciseDescriptionModel pushUps = ExerciseDescriptionModel(
    level: 'easy',
    description: 'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide Read More...',
    calories: '390',
    steps: [
      StepModel(
        title: 'Spread Your Arms',
        body: '''To make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.''',
      ),
      StepModel(
        title: 'Rest at The Toe',
        body: 'The basis of this movement is jumping. Now, what needs to be considered is that you have to use the tips of your feet',
      ),
      StepModel(
        title: 'Adjust Foot Movement',
        body: 'Jumping Jack is not just an ordinary jump. But, you also have to pay close attention to leg movements.',
      ),
      StepModel(
        title: 'Clapping Both Hands',
        body: 'This cannot be taken lightly. You see, without realizing it, the clapping of your hands helps you to keep your rhythm while doing the Jumping Jack',
      ),
    ],
  );
}