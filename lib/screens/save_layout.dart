import 'package:flutter/material.dart';

import '../constants.dart';

saveLayout(Color savingscolor) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        color: ksoftbackgroundcolor,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
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
                style: TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Text(
                '₦89,567.14',
                style: TextStyle(
                    color: savingscolor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              width: 170,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              decoration: BoxDecoration(
                  color: ksoftcolor, borderRadius: BorderRadius.circular(6)),
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
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              color: ksoftbackgroundcolor,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: const Text(
                'Your Pockets',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
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
            //  getTransaction(),
          ],
        ),
      )
    ],
  );
}
