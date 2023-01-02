import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/home_screen/savings_info.dart';

saveLayout(
  Color savingscolor,
  onTap,
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
                ' NGN Savings',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Text(
                        '₦89,567.14',
                        style: TextStyle(
                          color: savingscolor,
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
                      )
                    ],
                  ),
                  ClipRect(
                    child: GestureDetector(
                      onDoubleTap: onDoubleTap,
                      onTap: onTap,
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
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 5,
              ),
              width: 170,
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
                  Icon(
                    Icons.add_circle_rounded,
                    color: savingscolor,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Add Pocket',
                    style: TextStyle(
                      color: savingscolor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Your Pockets',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(
            //     top: 5.0,
            //   ),
            //   child: Divider(
            //     height: 3,
            //     color: Color.fromARGB(
            //       150,
            //       82,
            //       81,
            //       81,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      Expanded(
        child: ListView(
          children: [
            getSavingsInfo(),
          ],
        ),
      )
    ],
  );
}
