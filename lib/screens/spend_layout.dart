import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

double blurImage = 0.1;
getTransaction() {
  List<Column> transactionlist = [];
  for (int i = 0; i < detailsoftransaction.length; i++) {
    var newItem = Column(
      children: [
        Container(
          width: double.infinity,
          color: ksoftbackgroundcolor,
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage(
                'images/avatar.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  detailsoftransaction[i],
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  timeoftransaction[i],
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: blurImage == 5
                  ? [
                      const Text(
                        "",
                      ),
                    ]
                  : [
                      Text(
                        amountoftransaction[i],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
            ),
          ),
        ),
        const Divider(
          height: 3,
          color: Color.fromARGB(129, 82, 81, 81),
        )
      ],
    );
    transactionlist.add(
      newItem,
    );
  }
  return Column(
    children: transactionlist,
  );
}

spendLayout(ontap, onDoubleTap) {
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
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      const Text(
                        '₦389,765.14',
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
                      )
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
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 10,
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
                      const Icon(
                        Icons.restart_alt,
                        color: ksoftcolor,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Convert',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 10,
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
                    children: const [
                      Icon(
                        Icons.add_circle_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Add Money',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
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
      )
    ],
  );
}
