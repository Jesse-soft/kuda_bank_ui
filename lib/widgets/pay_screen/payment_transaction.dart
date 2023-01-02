import 'package:flutter/material.dart';

import '../../constants.dart';

Map<String, String> beneficiarienames = {
  '   Evans\nChibueze': 'E',
  '  Jesse\nOnyedire': 'J',
  ' Pastor\n Emmy': 'P',
  '      Sister\n Confidence': 'S',
  ' Sister\n  Love': 'S',
};
getBeneficiaries() {
  List<Container> beneficiarienameslist = [];
  for (int i = 0; i < beneficiarienames.length; i++) {
    var newItem = Container(
      margin: const EdgeInsets.only(
        top: 15,
        right: 30,
      ),
      child: Column(
        children: [
          ClipOval(
            child: Container(
              width: 50,
              height: 50,
              color: Colors.amber,
              child: Center(
                child: Text(
                  beneficiarienames.values.elementAt(i),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            beneficiarienames.keys.elementAt(i),
            style: const TextStyle(
              overflow: TextOverflow.clip,
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
    beneficiarienameslist.add(newItem);
  }
  return ListView(
    scrollDirection: Axis.horizontal,
    children: beneficiarienameslist,
  );
}

getPaymentTransactions() {
  List<Column> transactionlist = [];
  for (int i = 0; i < detailsoftransaction.length; i++) {
    var newItem = Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
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
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Colors.grey,
            ),
          ),
        ),
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
