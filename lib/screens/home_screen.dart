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
  late Color unSelectedIcon = const Color.fromARGB(
    255,
    110,
    109,
    109,
  );
  late Color selectedIcon = Colors.white;
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
            unselectedItemColor: unSelectedIcon,
            items: [
              const BottomNavigationBarItem(
                backgroundColor: ksoftcolor,
                label: "Home",
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: "Pay",
                icon: ClipRect(
                  child: SizedBox(
                    width: 28,
                    height: 20,
                    child: Image.asset(
                      "lib/icons/send.png",
                      color: _currentindex == 1 ? selectedIcon : unSelectedIcon,
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "Invest",
                icon: ClipRect(
                  child: SizedBox(
                    width: 28,
                    height: 20,
                    child: Image.asset(
                      "lib/icons/trend.png",
                      color: _currentindex == 2 ? selectedIcon : unSelectedIcon,
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "Cards",
                icon: ClipRect(
                  child: SizedBox(
                    width: 28,
                    height: 20,
                    child: Image.asset(
                      "lib/icons/credit_card.png",
                      color: _currentindex == 3 ? selectedIcon : unSelectedIcon,
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "More",
                icon: ClipRect(
                  child: SizedBox(
                    width: 28,
                    height: 20,
                    child: Image.asset(
                      "lib/icons/more.png",
                      color: _currentindex == 4 ? selectedIcon : unSelectedIcon,
                    ),
                  ),
                ),
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
