import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: 'Contact Us', backButton: true, actionButton: false,),
              SizedBox(height: 30),
              Text(
                'If you have any questions or concerns about our Privacy Policy, please contact us at:\n\n'
                    'Email: privacy@ourapp.com\nPhone: +1 (123) 456-7890',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
