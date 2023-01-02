import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/constants.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'More',
          ),
        ),
        backgroundColor: ksoftbackgroundcolor,
      ),
    );
  }
}
