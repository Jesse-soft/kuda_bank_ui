import 'package:flutter/material.dart';

import '../../constants.dart';

getSavingsInfo() {
  List<Column> transactionlist = [];
  for (int i = 0; i < detailsoftransaction.length; i++) {
    var newItem = Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.abc_outlined,
                      size: 10,
                      color: Colors.white,
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
              radius: 20,
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
    transactionlist.add(
      newItem,
    );
  }
  return Column(
    children: transactionlist,
  );
}
