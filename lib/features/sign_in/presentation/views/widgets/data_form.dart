import 'package:fitness_app/core/utils/functions/calculate_age.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/functions/date_picker.dart';
import '../../../../../core/utils/functions/navigation_functions.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../data/user_data_model.dart';
import '../sign_up_view.dart';
import 'body_info_input.dart';
import 'choose_gender_widget.dart';
import 'choose_plan_view_body.dart';
import 'custom_text_form_field.dart';

class DataForm extends StatelessWidget {
  DataForm({super.key, required this.model});

  final UserDataModel model;
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    late DateTime selectedDate;
    return Form(
      key: formKey,
      child: Expanded(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: ChooseGenderWidget(model: model,),),
            SliverToBoxAdapter(
              child: CustomTextFormField(
                controller: dateOfBirthController,
                keyboardType: TextInputType.datetime,
                hintText: 'Date of Birth',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your date of birth';
                  }
                  return null;
                },
                prefix: IconlyLight.calendar,
                readOnly: true,
                onTap: () async {
                  // Show the date picker and get the selected date
                  DateTime? pickedDate = await datePicker(context: context);

                  if (pickedDate != null) {
                    // Save the selected date in the DateTime variable
                    selectedDate = pickedDate;
                    debugPrint(calculateAge(selectedDate).toString());

                    // Format the date as a string to display in the TextField
                    String formattedDate =
                        "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";

                    // Set the formatted string to the controller to display

                    dateOfBirthController.text = formattedDate;
                  }
                },
              ),
            ),
            SliverToBoxAdapter(
              child: BodyInfoInput(
                hintText: "Your Weight",
                measurementUnit: "KG",
                icon: Icons.monitor_weight_outlined,
                controller: weightController,
              ),
            ),
            SliverToBoxAdapter(
              child: BodyInfoInput(
                hintText: "Your Height",
                measurementUnit: "CM",
                icon: IconlyLight.swap,
                controller: heightController,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  linearGradient: kBlueGradient,
                  childWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Next',
                        style: Styles.textStyleLargeTextBold
                            .copyWith(color: Colors.white),
                      ),
                      const Icon(
                        IconlyLight.arrow_right_2,
                        color: Colors.white,
                      )
                    ],
                  ),
                  onPressed: () {

                    if (formKey.currentState!.validate()) {
                      navigateTo(
                          context,
                          SignUpView(
                              widget: ChoosePlanViewBody(
                            model: UserDataModel(
                              firstName: model.firstName,
                              lastName: model.lastName,
                              email: model.email,
                              gender: model.gender,
                              dateOfBirth: selectedDate,
                              height: double.parse(heightController.text),
                              weight: double.parse(weightController.text),
                            ),
                          )));
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
