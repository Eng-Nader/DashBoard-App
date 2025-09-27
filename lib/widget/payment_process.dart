import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:dashboarda_app/widget/card_page_view.dart';
import 'package:dashboarda_app/widget/dot_indectaor.dart';
import 'package:flutter/material.dart';

class PaymentProcess extends StatefulWidget {
  const PaymentProcess({super.key});

  @override
  State<PaymentProcess> createState() => _PaymentProcessState();
}

class _PaymentProcessState extends State<PaymentProcess> {
  late PageController pageController;
  int indexPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      indexPage = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text(
          'My card',
          style: AppStyle.styleSemibold20,
        ),
        const SizedBox(
          height: 24,
        ),
        CardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        DotIndecator(
          currentIndex: indexPage,
        )
      ],
    );
  }
}
