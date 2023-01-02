import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

borrowLayout(
  Color borrowcolor,
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
                ' You owe',
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
                        '₦0.00',
                        style: TextStyle(
                          color: borrowcolor,
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
                  GestureDetector(
                    onDoubleTap: onDoubleTap,
                    onTap: onTap,
                    child: ClipRect(
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset("lib/icons/see_more.png",
                            color: const Color.fromARGB(
                              255,
                              110,
                              109,
                              109,
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        width: double.infinity,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 8,
          ),
          child: Row(
            textBaseline: TextBaseline.ideographic,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 3,
                      horizontal: 7,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        242,
                        189,
                        31,
                      ),
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Coming Soon',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Loan',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Apply for a low-interest loan, get money in minute',
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 11,
                    ),
                  )
                ],
              ),
              ClipRect(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    "lib/icons/money.png",
                    color: borrowcolor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(
          top: 20,
          bottom: 10,
        ),
        width: double.infinity,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Overdraft',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 8.0,
                    ),
                    child: const Text(
                      'Spend when your account balance is low and\nrepay whenever you get paid.',
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                  )
                ],
              ),
              ClipRect(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    "lib/icons/hot_air_balloon.png",
                    color: const Color.fromARGB(
                      255,
                      74,
                      182,
                      133,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}
