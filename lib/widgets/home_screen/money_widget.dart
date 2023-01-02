import 'package:flutter/material.dart';

import '../../constants.dart';

moneyWidget(
  String text,
  Icon buttonIcon,
  double width,
) {
  return Container(
    margin: const EdgeInsets.only(
      bottom: 10,
    ),
    width: width,
    padding: const EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 14,
    ),
    decoration: BoxDecoration(
      color: ksoftcolor,
      borderRadius: BorderRadius.circular(
        6,
      ),
    ),
    child: Row(
      children: [
        buttonIcon,
        const SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
