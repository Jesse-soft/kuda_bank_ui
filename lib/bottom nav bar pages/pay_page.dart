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
            children: const [
              Text(
                'Beneficiaries',
                style: TextStyle(
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
          Row(
            children: [
              Column(
                children: [
                  Container(),
                  const Text(
                    'Evans Chibueze',
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
