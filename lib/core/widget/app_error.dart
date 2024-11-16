import 'package:flutter/material.dart';
import 'package:flutter_note_app/core/widget/app_text.dart';

class AppError extends StatelessWidget {
  const AppError({required this.error, super.key});
  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText.title2(
            text: 'Something Went Wrong!',
            textColor: Colors.red,
          ),
          const SizedBox(height: 10),
          AppText.subtitle1(text: error),
        ],
      ),
    );
  }
}
