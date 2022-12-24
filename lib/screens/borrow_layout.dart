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
