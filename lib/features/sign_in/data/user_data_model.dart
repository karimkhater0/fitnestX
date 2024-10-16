class UserDataModel
{
  final String firstName, lastName, email;
  final double height, weight;
  DateTime? dateOfBirth;
  String gender = 'Male';
  String plan;


  UserDataModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    this.height = 0.0,
    this.weight = 0.0,
    this.dateOfBirth,
    this.plan = 'Improve Shape',
    this.gender= 'male',
});


  // Convert a User object to a Map (for serialization)
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName' : lastName,
      'dateOfBirth': dateOfBirth?.toIso8601String(),
      'email': email,
      'height': height,
      'weight': weight,
      'plan': plan,
      'gender': gender
    };
  }

  // Create a User object from a Map (for deserialization)
  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      dateOfBirth: DateTime.parse(json['dateOfBirth']),
      height: json['height'],
      weight: json['weight'],
      plan: json['plan'],
      gender: json['gender'],
    );
  }

  void fromJson(Map<String, dynamic> userMap) {}
}
