import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/constants.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Card',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        backgroundColor: ksoftbackgroundcolor,
        actions: [
          const Center(
            child: Text(
              'Get Card',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add_circle_rounded),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
    );
  }
}
