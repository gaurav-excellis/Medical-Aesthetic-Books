import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';

class MyAddressCardWidget extends StatelessWidget {
  final String addressLabel, name, address;
  const MyAddressCardWidget(
      {super.key,
      required this.addressLabel,
      required this.address,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        leading: Image.asset("Assets/Icon/address_icon.png"),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              addressLabel,
              style: AppStyles.subHeading1TextStyle.copyWith(fontSize: 14),
            ),
            Text(
              name,
              style: AppStyles.screenHeading2TextStyle.copyWith(fontSize: 16),
            ),
            Text(
              address,
              style: AppStyles.normalTextStyle.copyWith(fontSize: 12),
            )
          ],
        ),
        trailing: PopupMenuButton(
          itemBuilder: (context) {
            return const [
              PopupMenuItem<int>(
                value: 0,
                child: Text("Edit"),
              ),
            ];
          },
          onSelected: (value) {
            if (value == 0) {
              log("Edit got clicked");
            }
          },
        ),
      ),
    );
  }
}
