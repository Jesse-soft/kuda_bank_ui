import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/constants.dart';

import '../widgets/pay_screen/payment_transaction.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key});
  @override
  Widget build(
    BuildContext context,
  ) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
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
                237,
                137,
                137,
                137,
              ),
            ),
            Expanded(
              child: Container(
                color: ksoftbackgroundcolor,
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Expanded(
                      child: getBeneficiaries(),
                    ),
                    const Text(
                      'Send Money',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: getPaymentTransactions(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
