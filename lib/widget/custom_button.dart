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
          child: SizedBox(
            height: 62,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.transparent,
              ),
              onPressed: () {},
              child: Text(
                'Add more details',
                style: AppStyle.styleSemibold18(context).copyWith(
                  color: const Color(0xff4EB7F2),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: SizedBox(
            height: 62,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: const Color(0xff4EB7F2),
              ),
              onPressed: () {},
              child:   Text(
                'Send Money',
                style: AppStyle.styleSemibold18(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
