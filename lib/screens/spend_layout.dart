import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/widgets/home_screen/money_widget.dart';

import '../constants.dart';
import '../widgets/home_screen/transaction.dart';

//the enter spending layout
spendLayout(
  ontap,
  onDoubleTap,
) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                bottom: 15,
              ),
              child: Text(
                ' Account balance',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      const Text(
                        '₦196,389,765.14',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: blurImage,
                              tileMode: TileMode.mirror,
                              sigmaY: blurImage,
                            ),
                            child: Container(
                              color: Colors.white70.withOpacity(
                                0.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ClipRect(
                    child: GestureDetector(
                      onTap: ontap,
                      onDoubleTap: onDoubleTap,
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          "lib/icons/see_more.png",
                          color: const Color.fromARGB(
                            255,
                            110,
                            109,
                            109,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                moneyWidget(
                  'Convert',
                  const Icon(
                    Icons.restart_alt,
                    color: ksoftcolor,
                  ),
                  140,
                  Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                moneyWidget(
                  'Add Money',
                  const Icon(
                    Icons.add_circle_rounded,
                    color: Colors.white,
                  ),
                  150,
                  Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      Expanded(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 5,
                left: 20,
                bottom: 5,
              ),
              child: const Text(
                '07 Nov 2022',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 9,
                ),
              ),
            ),
            getTransaction(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 5,
                left: 20,
                bottom: 5,
              ),
              child: const Text(
                '03 Nov 2022',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 9,
                ),
              ),
            ),
            getTransaction(),
          ],
        ),
      ),
    ],
  );
}
