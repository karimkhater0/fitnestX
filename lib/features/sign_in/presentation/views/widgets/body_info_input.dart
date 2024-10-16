import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';
import 'measurement_container.dart';

class BodyInfoInput extends StatelessWidget {
  const BodyInfoInput({super.key, required this.hintText, required this.measurementUnit, required this.icon, required this.controller});

  final TextEditingController controller;
  final String hintText;
  final String measurementUnit;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
              keyboardType: TextInputType.number,
              controller: controller,
              validator: (value){
                if(value!.isEmpty){
                  return 'Please enter your $hintText';
                }
                return null;
              },
              hintText: hintText,
              prefix: icon
          ),
        ),
        const SizedBox(width: 15,),
        MeasurementContainer(measurementUnit: measurementUnit),
      ],
    );
  }
}
