import 'package:flutter/material.dart';

import '../constants.dart';

getSavingsInfo() {
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
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.abc,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      detailsoftransaction[i],
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
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
            trailing: const CircleAvatar(
              backgroundImage: AssetImage(
                'images/avatar.png',
              ),
            ),
          ),
        ),
        const Divider(
          height: 3,
          color: Color.fromARGB(
            255,
            82,
            81,
            81,
          ),
        )
      ],
    );
    transactionlist.add(newItem);
  }
  return Column(
    children: transactionlist,
  );
}

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
                  Text(
                    '₦89,567.14',
                    style: TextStyle(
                      color: savingscolor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ClipRect(
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
                  )
                ],
              ),
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
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Divider(
        height: 3,
        color: Color.fromARGB(150, 82, 81, 81),
      ),
      Expanded(
        child: Container(
          color: ksoftbackgroundcolor,
        ),
      )
    ],
  );
}
