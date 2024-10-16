import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: 'Privacy Policy',backButton: true,actionButton: false,),
              SizedBox(height: 16),
              Text(
                'Last updated: October 9, 2024',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 24),
              Text(
                'Introduction',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Welcome to our Privacy Policy page! When you use our app, you trust us with your information. '
                    'This Privacy Policy is meant to help you understand what data we collect, why we collect it, and '
                    'what we do with it. Please take some time to read through this carefully.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Information We Collect',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We collect information to provide better services to all our users. The information we collect may '
                    'include personal data such as your name, email address, and usage information. We may also collect '
                    'anonymous data for analytical purposes.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'How We Use Information',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We use the data we collect to improve your experience, provide support, and analyze trends. '
                    'Your data will not be shared with third parties without your explicit consent.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Your Rights',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'You have the right to access, update, or delete your personal data. If you have any concerns '
                    'regarding your data, please contact us at privacy@ourapp.com.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Changes to This Policy',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We may update this Privacy Policy from time to time. We encourage you to review this page periodically '
                    'for any changes. Your continued use of our app after we post changes to this policy will be deemed as '
                    'your acceptance of those changes.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
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
