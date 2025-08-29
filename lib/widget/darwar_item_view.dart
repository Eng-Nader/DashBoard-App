import 'package:dashboarda_app/models/darwar_item_model.dart';
import 'package:dashboarda_app/utils/app_images.dart';
import 'package:dashboarda_app/widget/darwar_item.dart';
import 'package:flutter/material.dart';

class DarwarItemView extends StatefulWidget {
  const DarwarItemView({super.key});

  @override
  State<DarwarItemView> createState() => _DarwarItemViewState();
}

class _DarwarItemViewState extends State<DarwarItemView> {
  final List<DarwarItemModel> darwarItemListe = [
    DarwarItemModel(
      image: AppImage.imagesDashboard,
      title: 'Dashboard',
    ),
    DarwarItemModel(
      image: AppImage.imagesTransaction,
      title: 'My Transaction',
    ),
    DarwarItemModel(
      image: AppImage.imagesStatics,
      title: 'Statistics',
    ),
    DarwarItemModel(
      image: AppImage.imagesWallet,
      title: 'Wallet Account',
    ),
    DarwarItemModel(
      image: AppImage.imagesInvesment,
      title: 'My Investments',
    ),
  ];
  int currntIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: darwarItemListe.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (currntIndex != index) {
              setState(
                () {
                  currntIndex = index;
                },
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            child: DarwarItem(
              darwarItemModel: darwarItemListe[index],
              isActive: currntIndex == index,
            ),
          ),
        );
      },
    );
  }
}
