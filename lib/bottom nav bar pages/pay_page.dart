import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/constants.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key});
  getPaymentTransactions() {
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
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(elevation: 0,
        title: const Center(
          child: Text(
            'Pay',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: ksoftbackgroundcolor,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            tooltip: 'Search Beneficiaries',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(
            height: 3,
            color: Color.fromARGB(
              255,
              82,
              81,
              81,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Beneficiaries',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            width: 500,
            child: getBeneficiaries(),
          ),
          SizedBox(
            height: 400,
            child: getPaymentTransactions(),
          )
        ],
      ),
    );
  }
}

List<String> beneficiarienames = [
  'Evans Chibueze',
  'Jesse Onyedire',
  'Pastor Emmy',
  'Sister Confidence',
  'Sister Love'
];
getBeneficiaries() {
  List<Column> beneficiarienameslist = [];
  for (int i = 0; i < beneficiarienames.length; i++) {
    var newItem = Column(
      children: [
        ClipOval(
          child: Container(
            width: 40,
            height: 40,
            color: Colors.amber,
          ),
        ),
        Text(
          beneficiarienames[i],
          style: const TextStyle(
            overflow: TextOverflow.clip,
            color: Colors.white,
          ),
        ),
      ],
    );
    beneficiarienameslist.add(newItem);
  }
  return ListView(
    scrollDirection: Axis.horizontal,
    children: beneficiarienameslist,
  );
}
