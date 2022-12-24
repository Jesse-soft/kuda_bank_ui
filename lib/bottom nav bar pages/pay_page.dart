import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/constants.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Pay',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        backgroundColor: ksoftbackgroundcolor,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search Beneficiaries',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
    );
  }
}
