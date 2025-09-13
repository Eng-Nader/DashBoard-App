import 'package:dashboarda_app/models/tansation_history_model.dart';
import 'package:dashboarda_app/widget/transation_item_historey.dart';
import 'package:flutter/material.dart';

class TransationHistoryView extends StatefulWidget {
  const TransationHistoryView({super.key});

  @override
  State<TransationHistoryView> createState() => _TransationHistoryViewState();
}

class _TransationHistoryViewState extends State<TransationHistoryView> {
  List<TransationHistoryModel> transationList = const [
    TransationHistoryModel(
      'Cash Withdrawal',
      '13 Apr, 2022 ',
      '\$20,129',
    ),
    TransationHistoryModel(
      'Landing Page project',
      '13 Apr, 2022 ',
      '\$2,000',
    ),
    TransationHistoryModel(
      'Juni Mobile App project',
      '13 Apr, 2022 at 3:30 PM',
      '\$20,129',
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transationList.asMap().entries.map(
        (item) {
          TransationHistoryModel itemHistory = item.value;
          int index = item.key;
          return GestureDetector(
            onTap: () {
              if (currentIndex != index) {
                setState(() {
                  currentIndex = index;
                });
              }
            },
            child: TransationItemHistorey(
              isActive: currentIndex == index,
              transationHistoryModel: itemHistory,
            ),
          );
        },
      ).toList(),
    );
  }
}
