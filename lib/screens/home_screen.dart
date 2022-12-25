import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/bottom%20nav%20bar%20pages/card_page.dart';
import 'package:kuda_bank_ui/bottom%20nav%20bar%20pages/home_page.dart';
import 'package:kuda_bank_ui/bottom%20nav%20bar%20pages/invest_page.dart';
import 'package:kuda_bank_ui/bottom%20nav%20bar%20pages/more_page.dart';
import 'package:kuda_bank_ui/bottom%20nav%20bar%20pages/pay_page.dart';
import 'package:kuda_bank_ui/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentindex = 0;
  final pages = [
    const HomePage(),
    const PayPage(),
    const InvestPage(),
    const CardPage(),
    const MorePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
            ),
            backgroundColor: ksoftcolor,
            currentIndex: _currentindex,
            onTap: (value) => setState(() {
                  _currentindex = value;
                }),
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color.fromARGB(255, 110, 109, 109),
            items: const [
              BottomNavigationBarItem(
                backgroundColor: ksoftcolor,
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Pay",
                icon: Icon(Icons.near_me_sharp),
              ),
              BottomNavigationBarItem(
                label: "Invest",
                icon: Icon(Icons.trending_up),
              ),
              BottomNavigationBarItem(
                label: "Cards",
                icon: Icon(Icons.credit_card),
              ),
              BottomNavigationBarItem(
                label: "More",
                icon: Icon(Icons.more),
              ),
            ]),
        backgroundColor: Colors.black,
        body: IndexedStack(
          index: _currentindex,
          children: pages,
        ),
      ),
    );
  }
}
