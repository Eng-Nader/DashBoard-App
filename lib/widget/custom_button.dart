import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              minimumSize: const Size(262, 62),
            ),
            onPressed: () {},
            child: Text(
              'Add more details',
              style: AppStyle.styleSemibold18.copyWith(
                color: const Color(0xff4EB7F2),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff4EB7F2),
              minimumSize: const Size(262, 62),
            ),
            onPressed: () {},
            child: const Text(
              'Send Money',
              style: AppStyle.styleSemibold18,
            ),
          ),
        ),
      ],
    );
  }
}
