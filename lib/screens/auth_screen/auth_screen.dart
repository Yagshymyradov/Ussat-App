import 'package:flutter/material.dart';

import '../../components/field_text.dart';
import '../../utils/assets.dart';
import '../../utils/theme.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final appTextTheme = context.appTextTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 85),
            Center(child: AppIcons.ussat.svgPicture()),
            const SizedBox(height: 65),
            Text(
              'Sign in',
              style: textTheme.labelLarge,
            ),
            const SizedBox(height: 10),
            const FieldText(
              labelText: 'Phone number',
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                  Size(double.infinity, 50),
                ),
              ),
              child: Text('Sign in', style: textTheme.headlineMedium),
            ),
            const Spacer(),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Create a New Account? ',
                      style: textTheme.headlineSmall,
                    ),
                    TextSpan(text: 'Sign up', style: appTextTheme.signButton),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
