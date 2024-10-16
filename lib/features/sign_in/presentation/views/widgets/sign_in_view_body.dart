import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../manager/cubit/login_cubit.dart';
import 'custom_divider.dart';
import 'custom_special_login_row.dart';
import 'custom_text_form_field.dart';
import 'do_not_have_an_account_text.dart';

class SignInViewBody extends StatelessWidget {
  SignInViewBody({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = LoginCubit.get(context);
        return Form(
          key: formKey,
          child: Column(
            children: [
              const Text(
                'Hey There,',
                style: Styles.textStyleLargeTextRegular,
              ),
              const Text(
                'Welcome Back',
                style: Styles.textStyleH4Bold,
              ),

              const SizedBox(height: 22,),

              CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                hintText: 'Email',
                prefix: IconlyLight.message,
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter your Email';
                  }
                  return null;
                },
              ),
              CustomTextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
                hintText: 'Password',
                prefix: IconlyLight.lock,
                isPassword: true,
                isPasswordHidden: cubit.isPassword,
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter your Password';
                  }
                  return null;
                },
              ),

              TextButton(
                  onPressed: (){},
                  child: Text(
                    'Forgot your password?',
                    style: Styles.textStyleSmallTextMedium.copyWith(
                      color: kGrey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
              ),

              const Spacer(),

              CustomButton(
                  linearGradient: kBlueGradient,
                  childWidget:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(IconlyBold.login, color: Colors.white,),
                      const SizedBox(width: 10,),
                      Text('Login', style: Styles.textStyleLargeTextBold.copyWith(
                        color: Colors.white,
                      )),
                    ],
                  ),
                  onPressed: (){
                    if(!formKey.currentState!.validate())
                    {

                    }
                    else
                    {
                      debugPrint('Success');
                    }
                  }
              ),

              const CustomDivider(),

              const CustomSpecialLoginRow(),

              const DoNotHaveAnAccountText(),
            ],
          ),
        );
      },
    );
  }
}
