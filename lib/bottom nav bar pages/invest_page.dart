import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/constants.dart';

class InvestPage extends StatelessWidget {
  const InvestPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Invest',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        backgroundColor: ksoftbackgroundcolor,
      ),
    );
  }
}
