import 'package:flutter/material.dart';

import '../constants.dart';

borrowLayout(Color borrowcolor) {
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
                ' You owe',
                style: TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Text(
                '₦0.00',
                style: TextStyle(
                    color: borrowcolor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
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
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
        decoration: BoxDecoration(
          color: ksoftcolor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  width: 120,
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Text('Coming Soon'),
                ),
                const Text(
                  'Load',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Apply for a low-interest loan, get money in minute',
                  overflow: TextOverflow.clip,
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                )
              ],
            ),
            const Icon(
              Icons.flaky_outlined,
            )
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(
          top: 20,
          bottom: 10,
        ),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
        decoration: BoxDecoration(
          color: ksoftcolor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                Text(
                  'Overdraft',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Spend when your account balance is low and repay whenever you get paid.',
                  overflow: TextOverflow.clip,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            const Icon(
              Icons.flaky_outlined,
            )
          ],
        ),
      ),
      // Expanded(
      //   child: ListView(
      //     children: [
      //       Container(
      //         width: double.infinity,
      //         color: ksoftbackgroundcolor,
      //         padding: const EdgeInsets.symmetric(
      //           horizontal: 20,
      //           vertical: 10,
      //         ),
      //         child: const Text(
      //           'Recent Transaction',
      //           style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 14,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       Container(
      //         width: double.infinity,
      //         padding: const EdgeInsets.only(
      //           top: 5,
      //           left: 20,
      //           bottom: 5,
      //         ),
      //         child: const Text(
      //           '07 Nov 2022',
      //           style: TextStyle(
      //             color: Colors.white54,
      //             fontSize: 9,
      //           ),
      //         ),
      //       ),
      //       //  getTransaction(),
      //     ],
      //   ),
      // )
    ],
  );
}
