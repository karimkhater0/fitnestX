import 'package:fitness_app/features/sign_in/data/user_data_model.dart';
import 'package:fitness_app/features/sign_in/presentation/views/widgets/form_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/functions/navigation_functions.dart';
import '../../../../../core/utils/widgets/gradient_indicator.dart';
import '../../manager/cubit/login_cubit.dart';
import '../sign_up_view.dart';
import 'accept_terms_row.dart';
import 'data_entry_view_body.dart';
import 'form_email.dart';
import 'form_first_name.dart';
import 'form_last_name.dart';
import 'form_password.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          navigateAndFinish(
            context,
            SignUpView(
              widget: DataEntryViewBody(
                model: state.model,
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        var cubit = LoginCubit.get(context);
        return Form(
          key: formKey,
          child: Expanded(
            child: CustomScrollView(
              slivers: [
                ///Data Entry Fields
                FormFirstName(controller: firstNameController,),
                FormLastName(controller: lastNameController,),
                FormEmail(controller: emailController),
                FormPassword(controller: passwordController, cubit: cubit),
                AcceptTermsRow(
                  isChecked: cubit.isChecked,
                  onChanged: cubit.onChanged,
                ),


                /// Sign Up Button
                state is SignUpLoadingState
                ? const CustomGradientIndicator()
                : FormButton(
                  isChecked: cubit.isChecked,
                  formKey: formKey,
                  onPressed: () {
                    final UserDataModel model = UserDataModel(
                      email: emailController.text,
                      firstName: firstNameController.text,
                      lastName: lastNameController.text,
                    );
                    cubit.signUp(model);
                  },
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}

